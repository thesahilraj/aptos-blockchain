module admin::donation {
    use std::signer;
    use std::string;
    use std::vector;
    use std::option::{Self, Option};

    /// Details for a donation campaign
    struct Campaign has store, copy, drop {
        id: u64,
        owner: address,
        title: string::String,
        description: string::String,
        goal: u64,
        total_received: u64,
        verified: bool,
        blacklist: bool,
    }

    /// Resource holding all campaigns and next id
    struct CampaignRegistry has key {
        next_id: u64,
        campaigns: vector<Campaign>,
    }

    /// Initialize registry. Callable by admin once.
    public entry fun init(admin: &signer) {
        let admin_addr = signer::address_of(admin);
        assert!(admin_addr == @admin, 1);
        assert!(!exists<CampaignRegistry>(admin_addr), 2);
        move_to(admin, CampaignRegistry { next_id: 0, campaigns: vector::empty<Campaign>() });
    }

    /// Admin verifies or blacklists a campaign by id
    public entry fun set_campaign_status(admin: &signer, campaign_id: u64, verified: bool, blacklist: bool) acquires CampaignRegistry {
        assert!(signer::address_of(admin) == @admin, 3);
        let registry = borrow_global_mut<CampaignRegistry>(@admin);
        let vec_ref = &mut registry.campaigns;
        let len = vector::length(vec_ref);
        let i = 0;
        loop {
            if (i >= len) break;
            let c_ref = vector::borrow_mut(vec_ref, i);
            if (c_ref.id == campaign_id) {
                c_ref.verified = verified;
                c_ref.blacklist = blacklist;
                return;
            };
            i = i + 1;
        };
        abort 100; // campaign not found
    }

    /// NGO registers a campaign. Returns new campaign id.
    public entry fun register_campaign(ngo: &signer, title: string::String, description: string::String, goal: u64) acquires CampaignRegistry {
        let ngo_addr = signer::address_of(ngo);
        let registry = borrow_global_mut<CampaignRegistry>(@admin);
        let id_val = registry.next_id;
        registry.next_id = id_val + 1;
        let campaign = Campaign {
            id: id_val,
            owner: ngo_addr,
            title,
            description,
            goal,
            total_received: 0,
            verified: false,
            blacklist: false,
        };
        vector::push_back(&mut registry.campaigns, campaign);
    }

    /// Donor donates amount 
    public entry fun donate(donor: &signer, campaign_id: u64, amount: u64, _message: Option<string::String>) acquires CampaignRegistry {
        assert!(amount > 0, 4);
        let registry = borrow_global_mut<CampaignRegistry>(@admin);
        let vec_ref = &mut registry.campaigns;
        let len = vector::length(vec_ref);
        let i = 0;
        let found = false;
        loop {
            if (i >= len) break;
            let c_ref = vector::borrow_mut(vec_ref, i);
            if (c_ref.id == campaign_id) {
                assert!(c_ref.verified, 5);
                assert!(!c_ref.blacklist, 6);
                c_ref.total_received = c_ref.total_received + amount;
                found = true;
                break;
            };
            i = i + 1;
        };
        assert!(found, 100); // not found
    }

    #[view]
    public fun get_campaigns(): vector<Campaign> acquires CampaignRegistry {
        let registry = borrow_global<CampaignRegistry>(@admin);
        registry.campaigns
    }
}