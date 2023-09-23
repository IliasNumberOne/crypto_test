import 'package:crypto_test/models/quiz_item_model.dart';

final List<Level> levels = [
  const Level(
    id: 0,
    name: 'Quick Quiz',
    gain: 10,
    difficult: 1,
    quizzes: [
      Quiz(
        id: 0,
        question: 'Bitcoin was launched in',
        answers: [
          Answer(answer: '2018'),
          Answer(answer: '2015'),
          Answer(answer: '2011'),
          Answer(
            answer: '2009',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 1,
        question: 'The creator of Bitcoin is',
        answers: [
          Answer(answer: 'Bill Gates'),
          Answer(
            answer: 'Satoshi Nakamoto',
            isCorrect: true,
          ),
          Answer(answer: 'Steve Jobs'),
          Answer(answer: 'Mark Zuckerberg'),
        ],
      ),
      Quiz(
        id: 2,
        question: 'A blockchain is',
        answers: [
          Answer(answer: 'a chain of lego blocks'),
          Answer(answer: 'a National Bank database'),
          Answer(answer: 'a Chinese currency'),
          Answer(
            answer: 'a database with information on transactions',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 3,
        question: 'A blockchain is secured by',
        answers: [
          Answer(answer: 'PIN code'),
          Answer(
            answer: '"hash" code',
            isCorrect: true,
          ),
          Answer(answer: 'password'),
          Answer(answer: 'login'),
        ],
      ),
      Quiz(
        id: 4,
        question:
        'A computer program that utilizes a blockchain for data storage, runs autonomously, is not controlled or operated from a single entitiy, is open source and has its use incentivized by the reward of fees or tokens.',
        answers: [
          Answer(answer: 'Bitcoin'),
          Answer(answer: 'Blockchain'),
          Answer(answer: 'Cryptocurrency'),
          Answer(
            answer: 'Decentralized Application',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 5,
        question:
        'Bitcoin was the first and is the most successful of all the cryptocurrencies. All the other coins are grouped together under this category.',
        answers: [
          Answer(answer: 'Bitcoin'),
          Answer(answer: 'Altcoins', isCorrect: true),
          Answer(answer: 'Cryptocurrency'),
          Answer(answer: 'Circulating Supply'),
        ],
      ),
      Quiz(
        id: 6,
        question:
        'A digital ledger of all the transactions ever made in a particular cryptocurrency and is repeatedly copied and saved onto thousands of computers all around the world, and it must always match each copy. As there is no master copy stored in one location, it"'
            "s considered decentralized.'",
        answers: [
          Answer(answer: 'Cryptography'),
          Answer(answer: 'Blockchain', isCorrect: true),
          Answer(answer: 'Bitcoin'),
          Answer(answer: 'Decentralized Application'),
        ],
      ),
      Quiz(
        id: 7,
        question: "The process of encrypting and decrypting information.",
        answers: [
          Answer(answer: 'Decentralized Application'),
          Answer(answer: 'Cryptocurrency'),
          Answer(answer: 'Block'),
          Answer(answer: 'Cryptography', isCorrect: true),
        ],
      ),
      Quiz(
        id: 8,
        question: "Bitcoin derives value through which method?",
        answers: [
          Answer(answer: 'Collapse of national banks'),
          Answer(answer: 'Insider dealing'),
          Answer(answer: 'Scarcity', isCorrect: true),
          Answer(answer: 'ETF trading'),
        ],
      ),
      Quiz(
        id: 9,
        question:
        "What is the fastest time you can send or receive payment in bitcoin without verification?",
        answers: [
          Answer(answer: 'Instantaneously', isCorrect: true),
          Answer(answer: '2 minutes'),
          Answer(answer: '60 minutes'),
          Answer(answer: '24 hours'),
        ],
      ),
    ],
    duration: 200,
  ),
  const Level(
    id: 1,
    name: 'Easy Quiz',
    gain: 20,
    difficult: 2,
    quizzes: [
      Quiz(
        id: 0,
        question:
        'The computers that process transactions for the bitcoin network are commonly called',
        answers: [
          Answer(answer: 'GPU'),
          Answer(answer: 'Bitcoin Foundation Member Units'),
          Answer(answer: 'Miners', isCorrect: true),
          Answer(answer: 'Truckers'),
        ],
      ),
      Quiz(
        id: 1,
        question:
        'What is the name of the general ledger that tracks all bitcoin transactions?',
        answers: [
          Answer(answer: 'The Block Chain', isCorrect: true),
          Answer(answer: 'The Gox Chain'),
          Answer(answer: 'Ledger Link'),
          Answer(answer: 'Satoshi Square'),
        ],
      ),
      Quiz(
        id: 2,
        question: "How long is Bitcoin's block time, in minutes?",
        answers: [
          Answer(answer: '1 minute'),
          Answer(answer: '2 minutes'),
          Answer(answer: '5 minutes'),
          Answer(
            answer: '10 minutes',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 3,
        question: 'What is the current Bitcoin block reward?',
        answers: [
          Answer(answer: '50 BTC'),
          Answer(answer: '25 BTC'),
          Answer(answer: '12.5 BTC', isCorrect: true),
          Answer(answer: '6.25 BTC'),
        ],
      ),
      Quiz(
        id: 4,
        question:
        'Encryption process to control the creation of coins and to verify transactions is called ....',
        answers: [
          Answer(answer: 'Cryptographic', isCorrect: true),
          Answer(answer: 'Mining'),
          Answer(answer: 'Decentralization'),
          Answer(answer: 'Proof-of-work'),
        ],
      ),
      Quiz(
        id: 5,
        question:
        'The very first cryptocurrency. It was created in 2008 by an individual or group of individuals operating under the name Satoshi Nakamoto. It was intended to be a peer-to-peer, decentralized electronic cash system.',
        answers: [
          Answer(answer: 'Crytocurrency'),
          Answer(answer: 'Altcoins'),
          Answer(answer: 'Blockchain'),
          Answer(answer: 'Bitcoin', isCorrect: true),
        ],
      ),
      Quiz(
        id: 6,
        question: "What is a fiat currency?",
        answers: [
          Answer(answer: 'Currency backed by a gold standard'),
          Answer(answer: 'A currency used to purchase a car'),
          Answer(answer: 'A currency backed by a physical commodity'),
          Answer(
            answer:
            'A currency that is declared a currency by the government, although not backed by a physical commodity',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 7,
        question: "Bitcoin’s all-time high was ______________ / BTC.",
        answers: [
          Answer(answer: '\$22,984.30'),
          Answer(answer: '\$19,783.21', isCorrect: true),
          Answer(answer: '\$16,394.56'),
          Answer(answer: '\$13,098.49'),
        ],
      ),
      Quiz(
        id: 8,
        question: "What does the block in the blockchain consist of?",
        answers: [
          Answer(answer: 'all of these', isCorrect: true),
          Answer(answer: 'Transaction data'),
          Answer(answer: 'A Timestamp'),
          Answer(answer: 'A Hash point'),
        ],
      ),
      Quiz(
        id: 9,
        question: "Where is the bitcoin central server located?",
        answers: [
          Answer(answer: 'none of the below', isCorrect: true),
          Answer(answer: 'Washington DC'),
          Answer(answer: 'Tokyo'),
          Answer(answer: 'London'),
        ],
      ),
      Quiz(
        id: 10,
        question: "How many Bitcoins will there ever be?",
        answers: [
          Answer(answer: '21 million in 2020'),
          Answer(answer: '21 million in 2140', isCorrect: true),
          Answer(answer: '14 million 2015'),
          Answer(answer: '23 million in 2140'),
        ],
      ),
      Quiz(
        id: 11,
        question: "How does one acquire bitcoins?",
        answers: [
          Answer(answer: 'As payment for goods or services.'),
          Answer(answer: 'Purchase bitcoins at a Bitcoin exchange.'),
          Answer(answer: 'Exchange bitcoins with someone near you.'),
          Answer(answer: 'Earn bitcoins through competitive bitcoin mining.'),
          Answer(answer: 'all of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 12,
        question: "People who update the blockchain are called:",
        answers: [
          Answer(answer: 'workers'),
          Answer(answer: 'miners', isCorrect: true),
          Answer(answer: 'losers'),
          Answer(answer: 'scientists'),
        ],
      ),
      Quiz(
        id: 13,
        question: "What is necessary for Bitcoin?",
        answers: [
          Answer(answer: 'bank'),
          Answer(answer: 'government'),
          Answer(answer: 'oxygen'),
          Answer(answer: 'internet', isCorrect: true),
        ],
      ),
      Quiz(
        id: 14,
        question:
        "Where was Bitcoin used to purchase items during an economic crisis?",
        answers: [
          Answer(answer: 'Haiti'),
          Answer(answer: 'NIgeria'),
          Answer(answer: 'Venzuela', isCorrect: true),
          Answer(answer: 'Russia'),
        ],
      ),
      Quiz(
        id: 15,
        question: "How are transactions validated on a blockchain?",
        answers: [
          Answer(answer: 'Using consensus mechanism', isCorrect: true),
          Answer(answer: 'By founders of the blockchain'),
          Answer(answer: 'It is automatically validated'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 16,
        question: "What is Proof of Stake consensus mechanism?",
        answers: [
          Answer(answer: 'Certificate to use blockchain'),
          Answer(answer: 'A password'),
          Answer(answer: 'How private key are made'),
          Answer(
            answer: 'Transaction and block verification protocol',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 17,
        question: "Which of these is a con of PoW?",
        answers: [
          Answer(answer: 'High energy usage'),
          Answer(answer: 'Open and decentralized'),
          Answer(answer: 'Proven at scale'),
          Answer(
            answer: 'None of the above',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 18,
        question:
        "Which real world resources are needed for consensus mechanism?",
        answers: [
          Answer(answer: 'Mining hardware'),
          Answer(answer: 'Electricity'),
          Answer(answer: 'Both A & B', isCorrect: true),
          Answer(answer: 'Only B'),
        ],
      ),
      Quiz(
        id: 19,
        question: "Solana's consensus mechanism is based on?",
        answers: [
          Answer(answer: 'Proof of stake(POS)', isCorrect: true),
          Answer(answer: 'Proof of work(POW)'),
          Answer(answer: 'Proof of authority(POA)'),
          Answer(
            answer: 'Proof of history(POH)',
          ),
        ],
      ),
    ],
    duration: 300,
  ),
  const Level(
    id: 2,
    name: 'Normal Quiz',
    gain: 30,
    difficult: 3,
    quizzes: [
      Quiz(
        id: 0,
        question: 'Which consensus mechanism does Polkadot use?',
        answers: [
          Answer(answer: 'Proof of stake', isCorrect: true),
          Answer(answer: 'Proof of work'),
          Answer(answer: 'Proof of authority'),
          Answer(answer: 'Proof of history'),
        ],
      ),
      Quiz(
        id: 1,
        question: 'Which of these is an objective of consensus mechanism?',
        answers: [
          Answer(answer: 'Cooperation'),
          Answer(answer: 'Equal rights'),
          Answer(answer: 'Participation'),
          Answer(answer: 'All of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 2,
        question: "Cardano is based on which consensus mechanism?",
        answers: [
          Answer(answer: 'Proof of burn'),
          Answer(answer: 'Proof of stake(POS)', isCorrect: true),
          Answer(answer: 'Proof of authority(POA)'),
          Answer(answer: 'Proof of work(POW)'),
        ],
      ),
      Quiz(
        id: 3,
        question: 'What is Proof of Work consensus mechanism?',
        answers: [
          Answer(
              answer: 'Agreement mechanism on transactions', isCorrect: true),
          Answer(answer: 'Mechanism to track workload'),
          Answer(answer: 'Mechanism to track'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 4,
        question: 'Which is not a part of asymmetric encryption?',
        answers: [
          Answer(answer: 'Passphrase'),
          Answer(answer: 'Public key'),
          Answer(answer: 'Private key'),
          Answer(answer: 'Mining', isCorrect: true),
        ],
      ),
      Quiz(
        id: 5,
        question: 'Which of these are pros of Proof of Stake?',
        answers: [
          Answer(answer: 'Faster transactions', isCorrect: true),
          Answer(answer: 'Low environmental impact'),
          Answer(answer: 'Economic incentive'),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 6,
        question: "Ethereum is changing its consensus mechanism from...",
        answers: [
          Answer(answer: 'POW to POS', isCorrect: true),
          Answer(answer: 'POW to POW'),
          Answer(answer: 'POW to POH'),
          Answer(answer: 'Not changing'),
        ],
      ),
      Quiz(
        id: 7,
        question: "Which consensus mechanism does Polkadot use?",
        answers: [
          Answer(answer: 'Proof of authority'),
          Answer(answer: 'Proof of work'),
          Answer(answer: 'Proof os stake', isCorrect: true),
          Answer(answer: 'Proof of history'),
        ],
      ),
      Quiz(
        id: 8,
        question: "Which of these is an objective of consensus mechanism?",
        answers: [
          Answer(answer: 'Cooperation'),
          Answer(answer: 'Equal rights'),
          Answer(answer: 'Participation'),
          Answer(answer: 'All of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 9,
        question: "How many consensus mechanisms exist currently?",
        answers: [
          Answer(answer: '14', isCorrect: true),
          Answer(answer: '10'),
          Answer(answer: '8'),
          Answer(answer: '4'),
        ],
      ),
      Quiz(
        id: 10,
        question: "What is a node?",
        answers: [
          Answer(answer: 'A type of cryptocurrency'),
          Answer(answer: 'A type of blockchain'),
          Answer(answer: 'An exchange'),
          Answer(answer: 'A computer on blockchain', isCorrect: true),
        ],
      ),
      Quiz(
        id: 11,
        question: "What is the genesis block?",
        answers: [
          Answer(answer: 'First block i a blockchain', isCorrect: true),
          Answer(answer: 'Block that control the entire blockchain'),
          Answer(answer: 'Program controlling all the blockchains'),
          Answer(answer: 'A governance mechanism'),
        ],
      ),
      Quiz(
        id: 12,
        question: "A blockchain carries no transaction cost.",
        answers: [
          Answer(answer: 'TRUE', isCorrect: true),
          Answer(answer: 'FALSE'),
        ],
      ),
      Quiz(
        id: 13,
        question: "Blockchain is a type of",
        answers: [
          Answer(answer: 'View'),
          Answer(answer: 'Table'),
          Answer(answer: 'Database', isCorrect: true),
          Answer(answer: 'Object'),
        ],
      ),
      Quiz(
        id: 14,
        question: "Blockchain is considered a type of",
        answers: [
          Answer(answer: 'Payment rail', isCorrect: true),
          Answer(answer: 'Payment method'),
          Answer(answer: 'Payment organisation'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 15,
        question: "Which of these are types of blockchain networks?",
        answers: [
          Answer(answer: 'Public blockchains'),
          Answer(answer: 'Private blockchains'),
          Answer(answer: 'Hybrid blockchains'),
          Answer(answer: 'All of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 16,
        question: "What is Proof of Stake consensus mechanism?",
        answers: [
          Answer(answer: 'Certificate to use blockchain'),
          Answer(answer: 'A password'),
          Answer(answer: 'How private key are made'),
          Answer(
            answer: 'Transaction and block verification protocol',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 17,
        question: "Each block of a blockchain consists of?",
        answers: [
          Answer(answer: 'A hash', isCorrect: true),
          Answer(answer: 'Timestamp'),
          Answer(answer: 'List of transactions'),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 18,
        question: "What does a ledger in blockchain does?",
        answers: [
          Answer(answer: 'Maps owners and objects'),
          Answer(answer: 'Identifies objects owned'),
          Answer(answer: 'Identification of owners'),
          Answer(
            answer: 'None of the above',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 19,
        question: "When a record is on a blockchain, who all can access it?",
        answers: [
          Answer(answer: 'Multiple people simultaneously'),
          Answer(answer: 'Only one person at a time'),
          Answer(
            answer: 'Only the people involved in the transactions',
            isCorrect: true,
          ),
          Answer(answer: 'No one'),
        ],
      ),
      Quiz(
        id: 20,
        question: "Blockchain stores data in the form of?",
        answers: [
          Answer(answer: 'Lines'),
          Answer(answer: 'Blocks', isCorrect: true),
          Answer(answer: 'Circle'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 21,
        question: "Can transactions recorded in the blockchain be changed?",
        answers: [
          Answer(answer: 'Yes, by the owner of blockchain'),
          Answer(answer: 'No, it cannot be changed', isCorrect: true),
          Answer(answer: 'Yes, for a certain amount of time'),
          Answer(answer: 'Yes, by users of blockchain'),
        ],
      ),
      Quiz(
        id: 22,
        question: "Initial application for which blockchain was designed?",
        answers: [
          Answer(answer: 'Peer to peer finance', isCorrect: true),
          Answer(answer: 'Research project'),
          Answer(answer: 'Software to connect banks'),
          Answer(answer: 'None of these'),
        ],
      ),
      Quiz(
        id: 23,
        question: "An orphan block is created when 51% attack is successful.",
        answers: [
          Answer(answer: 'True'),
          Answer(answer: 'False', isCorrect: true),
        ],
      ),
      Quiz(
        id: 24,
        question: "First artist to accept bitcoin as payment",
        answers: [
          Answer(answer: 'Badshah'),
          Answer(answer: 'Coldplay'),
          Answer(answer: '50 cent', isCorrect: true),
          Answer(answer: 'Eminem'),
        ],
      ),
      Quiz(
        id: 25,
        question: "How much has bitcoin's value grown since 2014?",
        answers: [
          Answer(answer: '800%', isCorrect: true),
          Answer(answer: '30%'),
          Answer(answer: '150%'),
          Answer(answer: '200%'),
        ],
      ),
      Quiz(
        id: 26,
        question:
        "What is the name of research paper that brought bitcoin to the world",
        answers: [
          Answer(answer: 'Black paper'),
          Answer(answer: 'White paper', isCorrect: true),
          Answer(answer: 'Green paper'),
          Answer(answer: 'Bit paper'),
        ],
      ),
      Quiz(
        id: 27,
        question: "Bitcoin is valued because of",
        answers: [
          Answer(answer: 'Collapse of banks'),
          Answer(answer: 'Insider dealing'),
          Answer(answer: 'Scarcity', isCorrect: true),
          Answer(answer: 'Etf trading'),
        ],
      ),
      Quiz(
        id: 28,
        question: "How can Metaverse change training and development?",
        answers: [
          Answer(answer: 'Ai-enabled digital coaches'),
          Answer(answer: 'Role play exercises'),
          Answer(answer: 'Interactive & 3d displays', isCorrect: true),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 29,
        question: "Which bitcoin exchange from japan collapsed in 2014?",
        answers: [
          Answer(answer: 'Blockchain.Info'),
          Answer(answer: 'Tradehill'),
          Answer(answer: 'Mt.Gox', isCorrect: true),
          Answer(answer: 'Bitstamp'),
        ],
      ),
    ],
    duration: 400,
  ),
  const Level(
    id: 3,
    name: 'Expert Quiz',
    gain: 40,
    difficult: 4,
    quizzes: [
      Quiz(
        id: 0,
        question: 'How does nfts look like?',
        answers: [
          Answer(answer: 'Like bitcoin'),
          Answer(answer: 'Like dogecoin'),
          Answer(answer: 'An art, music and painting', isCorrect: true),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 1,
        question: 'Can your selfie be converted into nft?',
        answers: [
          Answer(answer: 'Yes', isCorrect: true),
          Answer(answer: 'No'),
        ],
      ),
      Quiz(
        id: 2,
        question: "Who created nfts?",
        answers: [
          Answer(answer: 'Elon Musk'),
          Answer(answer: 'Kevin McCoy', isCorrect: true),
          Answer(answer: 'Jeff Bezos'),
          Answer(answer: 'Vitalik Buterin'),
        ],
      ),
      Quiz(
        id: 3,
        question: 'Which blockchain hosts the most nfts?',
        answers: [
          Answer(answer: 'Bitcoin'),
          Answer(answer: 'Ethereum', isCorrect: true),
          Answer(answer: 'Polygon'),
          Answer(answer: 'Litecoin'),
        ],
      ),
      Quiz(
        id: 4,
        question: 'Which was the first nft sold?',
        answers: [
          Answer(answer: 'Quantum', isCorrect: true),
          Answer(answer: 'Cryptopunks'),
          Answer(answer: 'Bored ape yatch club'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 5,
        question: 'What influences a price of an nft?',
        answers: [
          Answer(answer: 'Creator or previous owner'),
          Answer(answer: 'No of editions'),
          Answer(answer: 'Stock market', isCorrect: true),
          Answer(answer: 'Both a & b'),
        ],
      ),
      Quiz(
        id: 6,
        question: "What are the risks associated with nfts?",
        answers: [
          Answer(answer: 'Fake marketplaces'),
          Answer(answer: 'Fake giveaways', isCorrect: true),
          Answer(answer: 'Counterfeit nfts'),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 7,
        question: "Which of the following is an unsafe way to store nfts?",
        answers: [
          Answer(answer: 'Centralised server'),
          Answer(answer: 'IDFC', isCorrect: true),
          Answer(answer: 'Ethereum blockchain'),
        ],
      ),
      Quiz(
        id: 8,
        question: "What is an altcoin?",
        answers: [
          Answer(answer: '2nd most used cryptocurrency'),
          Answer(answer: 'Cryptocurrency except btc'),
          Answer(answer: 'Another cryptocurrency', isCorrect: true),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 9,
        question: "What is ether in ethereum?",
        answers: [
          Answer(answer: 'Denomination in ethereum'),
          Answer(answer: 'Method to mine ethereum'),
          Answer(answer: 'A cloud computing process'),
          Answer(answer: 'None of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 10,
        question: "How many cryptocurrenies exist currently?",
        answers: [
          Answer(answer: '1000-2000'),
          Answer(answer: '300-400'),
          Answer(answer: '5647'),
          Answer(answer: '10,000+', isCorrect: true),
        ],
      ),
      Quiz(
        id: 11,
        question: "What are the features of a stablecoin?",
        answers: [
          Answer(answer: 'Non-volatile'),
          Answer(answer: 'Accessible globally'),
          Answer(answer: 'Pegged to fiat currencies'),
          Answer(answer: 'All of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 12,
        question: "What is ether's block time?",
        answers: [
          Answer(answer: '14-15 seconds', isCorrect: true),
          Answer(answer: '10 seconds'),
          Answer(answer: '12 hours'),
          Answer(answer: '24 hours'),
        ],
      ),
      Quiz(
        id: 13,
        question: "Which of these in not a denomination of Ether?",
        answers: [
          Answer(answer: 'WEI', isCorrect: true),
          Answer(answer: 'KWEI'),
          Answer(answer: 'PWEI'),
          Answer(answer: 'XWEI'),
        ],
      ),
      Quiz(
        id: 14,
        question: "Which of these are types of ethereum networks?",
        answers: [
          Answer(answer: 'Private network', isCorrect: true),
          Answer(answer: 'Test network'),
          Answer(answer: 'Live network'),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 15,
        question: "What is an ethereum?",
        answers: [
          Answer(
              answer: 'Blockchain based software platform', isCorrect: true),
          Answer(answer: 'Private software platform'),
          Answer(answer: 'Technology used in banks'),
          Answer(answer: 'Centralized platforms'),
        ],
      ),
      Quiz(
        id: 16,
        question: "Where did the term metaverse originate?",
        answers: [
          Answer(answer: 'Mark Zuckerberg created it'),
          Answer(answer: 'A novel named "Snow crash"', isCorrect: true),
          Answer(answer: 'No one knows'),
          Answer(answer: 'Its a scam'),
        ],
      ),
      Quiz(
        id: 17,
        question: "Which companies are not developing a metaverse?",
        answers: [
          Answer(answer: 'Google'),
          Answer(answer: 'Facebook'),
          Answer(answer: 'Amazon'),
          Answer(answer: 'Microsoft', isCorrect: true),
        ],
      ),
      Quiz(
        id: 18,
        question: "First metaverse stock listed on nyse?",
        answers: [
          Answer(answer: 'Apple'),
          Answer(answer: 'Tesla'),
          Answer(answer: 'Roblox'),
          Answer(
            answer: 'Meta',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 19,
        question: "Which of these is a challenge associated with metaverse?",
        answers: [
          Answer(answer: 'Accessibility'),
          Answer(answer: 'Psychological impact of dual reality'),
          Answer(answer: 'Virtual marketplace', isCorrect: true),
          Answer(answer: 'Cross-platform interaction'),
        ],
      ),
      Quiz(
        id: 20,
        question: "Which IPO was seen as the first Metaverse IPO?",
        answers: [
          Answer(answer: 'Fortnite'),
          Answer(answer: 'Meta'),
          Answer(answer: 'Roblox'),
          Answer(
            answer: 'None of the above',
            isCorrect: true,
          ),
        ],
      ),
      Quiz(
        id: 21,
        question: "How many Meta-stores does Facebook have?",
        answers: [
          Answer(answer: "One"),
          Answer(answer: 'Hundred'),
          Answer(answer: 'Fifty', isCorrect: true),
          Answer(answer: 'None so far'),
        ],
      ),
      Quiz(
        id: 22,
        question: "Which religious institutions have forayed into metaverse?",
        answers: [
          Answer(answer: 'The Vatican', isCorrect: true),
          Answer(answer: 'Mecca Pilgrimage'),
          Answer(answer: 'Both A & B'),
          Answer(answer: 'None Of The Above'),
        ],
      ),
      Quiz(
        id: 23,
        question: "Which of these are DeFi services?",
        answers: [
          Answer(answer: 'Decentralized exchanges'),
          Answer(answer: 'Lend & borrow platforms'),
          Answer(answer: 'Automated market makers'),
          Answer(answer: 'All of the above', isCorrect: true),
        ],
      ),
      Quiz(
        id: 24,
        question: "Which is the most important blockchain for DeFi?",
        answers: [
          Answer(answer: 'Bitcoin lightning network'),
          Answer(answer: 'Eth & binance smart chain'),
          Answer(answer: 'Tron and avalanche'),
          Answer(answer: 'Corda', isCorrect: true),
        ],
      ),
      Quiz(
        id: 25,
        question: "Which of these is a risk related to DeFi lending?",
        answers: [
          Answer(answer: 'Impermanent losses', isCorrect: true),
          Answer(answer: 'All of the above'),
          Answer(answer: 'Rug pulls'),
          Answer(answer: 'Flash loan attacks'),
        ],
      ),
      Quiz(
        id: 26,
        question: "Which of these projects offer self repaying loans?",
        answers: [
          Answer(answer: 'Liquity'),
          Answer(answer: 'Yearn finance'),
          Answer(answer: "Alchemix", isCorrect: true),
          Answer(answer: 'Anchor protocol'),
        ],
      ),
      Quiz(
        id: 27,
        question: "Olympus Pro is a service that allows for?",
        answers: [
          Answer(answer: 'Nft printing'),
          Answer(answer: 'Projects to sell bonds', isCorrect: true),
          Answer(answer: 'Leveraging trade'),
          Answer(answer: 'New token launches'),
        ],
      ),
      Quiz(
        id: 28,
        question: "Which chain was DeFi Kingdoms first deployed to?",
        answers: [
          Answer(answer: 'Avalanche'),
          Answer(answer: 'Polygon'),
          Answer(answer: 'Ethereum'),
          Answer(answer: 'Harmony', isCorrect: true),
        ],
      ),
      Quiz(
        id: 29,
        question: "What service does Rocket Pool provide?",
        answers: [
          Answer(answer: 'Insurance'),
          Answer(answer: 'Prediction markets'),
          Answer(answer: 'Staking derivatives for ethereum', isCorrect: true),
          Answer(answer: 'Bitcoin DeFi'),
        ],
      ),
      Quiz(
        id: 30,
        question: "Which of these are features of DAOs?",
        answers: [
          Answer(answer: 'No central leadership', isCorrect: true),
          Answer(answer: 'Decision making by rules'),
          Answer(answer: 'Owned & managed by members'),
          Answer(answer: 'All of the above'),
        ],
      ),
      Quiz(
        id: 31,
        question: "Which of these is NOT a component of DAOs?",
        answers: [
          Answer(answer: 'User'),
          Answer(answer: 'Government', isCorrect: true),
          Answer(answer: 'Developer'),
          Answer(answer: 'Validator'),
        ],
      ),
      Quiz(
        id: 32,
        question: "What is the first step of launching DAOs?",
        answers: [
          Answer(answer: 'Creation of smart contracts'),
          Answer(answer: 'Funding'),
          Answer(answer: 'Recuitment'),
          Answer(answer: 'Deployment', isCorrect: true),
        ],
      ),
      Quiz(
        id: 33,
        question: "Which of these is a feature of DAOs?",
        answers: [
          Answer(answer: 'Human handling'),
          Answer(answer: 'Hierarchical'),
          Answer(answer: 'Flat & fully democratized', isCorrect: true),
          Answer(answer: 'Private/limited to public'),
        ],
      ),
      Quiz(
        id: 34,
        question: "Which is the first DAO?",
        answers: [
          Answer(answer: 'The bitcoin network'),
          Answer(answer: 'Binance organization'),
          Answer(answer: 'The DAO', isCorrect: true),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 35,
        question: "A DAO is not a...",
        answers: [
          Answer(answer: 'Organization built on codes'),
          Answer(answer: 'Traditional legal entity'),
          Answer(answer: 'Organisation on blockchain', isCorrect: true),
          Answer(answer: 'Organization'),
        ],
      ),
      Quiz(
        id: 36,
        question:
        "Which DAO bought Wu-Tang Clan album Once Upon a Time in Shaolin?",
        answers: [
          Answer(answer: 'Elektradao'),
          Answer(answer: 'Obscuradao'),
          Answer(answer: 'Pleasrdao', isCorrect: true),
          Answer(answer: 'Constitutiondao'),
        ],
      ),
      Quiz(
        id: 37,
        question: "What does WAGMI stands for?",
        answers: [
          Answer(answer: 'We are going to make it'),
          Answer(answer: 'We are all gonna make it', isCorrect: true),
          Answer(answer: 'We are not goin to make it'),
          Answer(answer: 'None of the above'),
        ],
      ),
      Quiz(
        id: 38,
        question: "BTD stands for",
        answers: [
          Answer(answer: 'Buy the dip', isCorrect: true),
          Answer(answer: 'Bought the dip'),
          Answer(answer: 'Buying the dips'),
          Answer(answer: 'Barging the door'),
        ],
      ),
      Quiz(
        id: 39,
        question: "Blockchain was invented in the year?",
        answers: [
          Answer(answer: '2007'),
          Answer(answer: '2009'),
          Answer(answer: '2008', isCorrect: true),
          Answer(answer: '2006'),
        ],
      ),
    ],
    duration: 500,
  ),
];