#[test_only]
module admin::donation_test {
    use std::string;
    use std::option;
    use std::vector;
    use admin::donation;

    #[test(admin = @admin, ngo = @0xBEEF, donor = @0xCAFE)]
    public fun test_register_and_donate(admin: &signer, ngo: &signer, donor: &signer) {
        donation::init(admin);

        donation::register_campaign(ngo, string::utf8(b"Clean Water"), string::utf8(b"Borewell project"), 1000);

        // admin verifies campaign id 0
        donation::set_campaign_status(admin, 0, true, false);

        donation::donate(donor, 0, 10, option::none<string::String>());
        
        // Test passes if no abort occurs
    }
}


