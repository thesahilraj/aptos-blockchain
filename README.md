# DonateNFT - Transparent Blockchain Donation Platform

## 🌟 Project Overview

DonateNFT is a revolutionary blockchain-based donation platform built on the Aptos network that combines charitable giving with NFT rewards. The platform enables transparent, secure donations to verified NGOs and charities while providing donors with unique NFT badges as proof of their contributions.

## 📖 Description

DonateNFT transforms traditional charitable giving by leveraging blockchain technology to create a trustless, transparent donation ecosystem. The platform features:

- **Smart Contract-Powered Donations**: All donations are processed through secure Move smart contracts on the Aptos blockchain
- **Verification System**: Admin-controlled verification ensures only legitimate campaigns receive donations
- **NFT Rewards**: Donors automatically receive unique NFT badges as immutable proof of their charitable contributions
- **Campaign Management**: NGOs can register campaigns with goals, descriptions, and funding targets
- **Real-time Tracking**: Complete transparency with on-chain tracking of all donations and campaign progress
- **Modern Web Interface**: Intuitive React-based frontend with wallet integration for seamless user experience

### Key Features:
- 🔐 **Secure Wallet Integration** - Connect with Petra, Martian, or OKX wallets
- ✅ **Campaign Verification** - Admin approval system for legitimate campaigns
- 🎨 **NFT Minting** - Automatic NFT generation for donation proof
- 📊 **Real-time Analytics** - Live tracking of donations and campaign progress
- 🚫 **Fraud Prevention** - Blacklist system for fraudulent campaigns
- 💰 **APT Token Support** - Native Aptos token donations
- 📱 **Responsive Design** - Works seamlessly on desktop and mobile

## 🚀 Vision

Our vision is to revolutionize charitable giving by creating the world's most transparent and trustworthy donation platform. We aim to:

1. **Eliminate Donation Fraud**: Using blockchain verification to ensure funds reach intended recipients
2. **Increase Donor Confidence**: Providing immutable proof of donations through NFTs
3. **Enhance Transparency**: Making every transaction publicly verifiable on the blockchain
4. **Gamify Charitable Giving**: Creating a rewarding experience through NFT collections
5. **Bridge Traditional and Digital Philanthropy**: Making blockchain donations accessible to everyone
6. **Build a Global Community**: Connecting donors, NGOs, and beneficiaries worldwide

### Core Values:
- **Transparency**: Every donation is publicly verifiable
- **Trust**: Smart contracts eliminate intermediary risks
- **Accessibility**: Simple, user-friendly interface for all technical levels
- **Impact**: Direct connection between donors and verified causes
- **Innovation**: Combining cutting-edge blockchain with social good

## 🔮 Future Scope

### Phase 1: Platform Enhancement (Next 3-6 months)
- **Multi-Token Support**: Accept various cryptocurrencies beyond APT
- **Enhanced NFT Features**: Dynamic NFTs that evolve with donation milestones
- **Mobile App**: Native iOS and Android applications
- **KYC Integration**: Enhanced verification for large donations
- **Campaign Categories**: Specialized sections for education, healthcare, environment, etc.

### Phase 2: Advanced Features (6-12 months)
- **DAO Governance**: Community-driven platform decisions
- **Impact Tracking**: Real-world outcome reporting for campaigns
- **Recurring Donations**: Subscription-based giving with automated rewards
- **Cross-Chain Support**: Integration with Ethereum, Polygon, and other networks
- **Corporate Partnerships**: Enterprise donation solutions for businesses
- **Tax Integration**: Automated tax receipt generation for donors

### Phase 3: Ecosystem Expansion (1-2 years)
- **DeFi Integration**: Yield farming for campaign funds to maximize impact
- **Metaverse Presence**: Virtual charity events and NFT exhibitions
- **AI-Powered Matching**: Intelligent donor-to-campaign recommendations
- **Global Compliance**: Support for international charity regulations
- **Impact Marketplace**: Secondary market for donation NFTs with proceeds going to charity
- **Educational Platform**: Blockchain literacy programs for NGOs

### Phase 4: Global Scale (2+ years)
- **Government Partnerships**: Official disaster relief and aid distribution
- **Enterprise APIs**: White-label solutions for other platforms
- **Research Initiative**: Funding blockchain-for-good research projects
- **Global Standards**: Setting industry standards for transparent giving
- **Impact Measurement**: Comprehensive real-world impact analytics
- **Community Building**: Regional chapters and local campaign support

## 🛠 Technical Stack

### Smart Contract (Aptos Move)
- **Language**: Move
- **Network**: Aptos Devnet/Mainnet
- **Features**: Campaign management, donation processing, verification system

### Frontend (Next.js)
- **Framework**: Next.js 15 with TypeScript
- **Styling**: Tailwind CSS
- **Wallet Integration**: Aptos Wallet Adapter
- **State Management**: React Hooks
- **Deployment**: Vercel-ready

### Key Smart Contract Functions:
- `init()` - Initialize platform
- `register_campaign()` - NGO campaign registration
- `set_campaign_status()` - Admin verification
- `donate()` - Process donations
- `get_campaigns()` - Fetch campaign data

## 🎯 Target Impact

### For Donors:
- **Transparency**: Know exactly where donations go
- **Proof**: Permanent NFT records of charitable giving
- **Engagement**: Gamified donation experience
- **Tax Benefits**: Clear donation records for tax purposes

### For NGOs:
- **Global Reach**: Access to worldwide donor base
- **Reduced Costs**: Lower transaction fees than traditional payment processors
- **Instant Verification**: Quick access to verified donor base
- **Real-time Funding**: Immediate access to donated funds

### For Society:
- **Increased Trust**: Blockchain transparency builds confidence in charitable giving
- **Fraud Reduction**: Verification system prevents donation scams
- **Higher Participation**: Engaging platform encourages more people to donate
- **Global Impact**: Cross-border donations without traditional banking barriers

## 🚀 Getting Started

### Prerequisites
- Node.js 18+ and npm
- Aptos CLI
- Supported wallet (Petra, Martian, OKX)

### Installation
```bash
# Clone the repository
git clone https://github.com/thesahilraj/aptos-blockchain(https://github.com/thesahilraj/aptos-blockchain)

# Install dependencies
cd donatenft/web
npm install

# Set up environment
cp .env.example .env.local
# Update with your contract address

# Start development server
npm run dev
```

### Smart Contract Deployment
```bash
# Compile contract
aptos move compile

# Deploy to network
aptos move publish --named-addresses admin=YOUR_ADDRESS

# Initialize platform
aptos move run --function-id 'YOUR_ADDRESS::donation::init'
```

## 🤝 Contributing

We welcome contributions from developers, designers, and blockchain enthusiasts who share our vision of transparent charitable giving. Join us in building the future of philanthropy!

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## 🌍 Join Our Mission

Together, we can make charitable giving more transparent, trustworthy, and impactful. Join DonateNFT in revolutionizing philanthropy through blockchain technology.

Tranasction ID - 0xc7f42efcb4618205ccc692f3ab6088c2e54b5e241357776536a62a3670a4bdeb

Screenshot - <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1bbd4326-0b8b-46ee-96e1-cd984170a8da" />


---

**Built with ❤️ for a better world** | **Powered by Aptos Blockchain**
