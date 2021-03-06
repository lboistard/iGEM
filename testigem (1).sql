-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 06 oct. 2020 à 18:10
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `testigem`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID_manager` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `MDP` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID_manager`, `email`, `MDP`) VALUES
('Thomas', 'thomas.kobak@esme.fr', 'louis');

-- --------------------------------------------------------

--
-- Structure de la table `avalider`
--

DROP TABLE IF EXISTS `avalider`;
CREATE TABLE IF NOT EXISTS `avalider` (
  `ID` varchar(11) NOT NULL,
  `genus` varchar(13) DEFAULT NULL,
  `species` varchar(11) DEFAULT NULL,
  `Phage` varchar(12) DEFAULT NULL,
  `LTFsequenceName` varchar(8) DEFAULT NULL,
  `LTFSequence` varchar(1032) DEFAULT NULL,
  `chaperoneSequenceName` varchar(8) DEFAULT NULL,
  `chaperoneSequence` varchar(380) DEFAULT NULL,
  `chaperoneSequence2Name` varchar(7) DEFAULT NULL,
  `chaperoneSequence2` varchar(205) DEFAULT NULL,
  `TargetMotif` varchar(30) DEFAULT NULL,
  `link` varchar(89) DEFAULT NULL,
  `description` varchar(1026) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avalider`
--

INSERT INTO `avalider` (`ID`, `genus`, `species`, `Phage`, `LTFsequenceName`, `LTFSequence`, `chaperoneSequenceName`, `chaperoneSequence`, `chaperoneSequence2Name`, `chaperoneSequence2`, `TargetMotif`, `link`, `description`, `email`) VALUES
('17', 'test', 'hj', 'ghj', 'ghf', 'hjg', NULL, 'jhgj', NULL, 'gj', 'gjg', 'j', NULL, NULL),
('jgc', 'jhvjh', 'vbhkb', 'jb', 'fgh', 'bkh', NULL, 'hbkh', NULL, 'khb', 'khb', 'khb', NULL, NULL),
('bkjbj', 'ljbljb', 'ljbljb', 'ljbljbl', 'jbljb', 'ljblj', 'bljblj', 'bljb', 'ljblj', 'bljbl', 'jblj', 'bljbljb', NULL, NULL),
('drgdfg', 'dfg', 'dfgdfg', 'dfgdf', 'gdfgdf', 'fdgdf', 'gdfgfdg', 'dfgdfgdf', 'gdfgdfg', 'dfgdfg', 'fdgfdg', 'dfgdfg', 'dfg', 'thomas.kobak@esme.fr'),
('qsd', 'qsd', 'qsdqsd', 'qsdqs', 'dqsd', 'qsd', 'qsdq', 'qsdqsd', 'qsd', 'qsd', 'qsdqsd', 'qsdqs', 'dqsd', 'thomas.kobak@esme.fr'),
('de', 'test', 'tfdkjg', 't35', 'sdfsdf', 'sdfsdf', 'fsdfsdf', '', 'dsfs', 'fuijh', 'hjhu', 'huuuyyy', 'gjdkyf', 'thomas.kobak@esme.fr');

-- --------------------------------------------------------

--
-- Structure de la table `bddigem`
--

DROP TABLE IF EXISTS `bddigem`;
CREATE TABLE IF NOT EXISTS `bddigem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(13) DEFAULT NULL,
  `espece` varchar(11) DEFAULT NULL,
  `Phage` varchar(12) DEFAULT NULL,
  `LTFSequence` varchar(1032) DEFAULT NULL,
  `chaperonesSequence` varchar(380) DEFAULT NULL,
  `chaperonesSequence2` varchar(205) DEFAULT NULL,
  `Target` varchar(30) DEFAULT NULL,
  `link` varchar(89) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bddigem`
--

INSERT INTO `bddigem` (`ID`, `genre`, `espece`, `Phage`, `LTFSequence`, `chaperonesSequence`, `chaperonesSequence2`, `Target`, `link`) VALUES
(1, 'Escherichia', 'coli', 'phage T4', 'gp37: MATLKQIQFKRSKIAGTRPAASVLAEGELAINLKDRTIFTKDDSGNIIDLGFAKGGQVDGNVTINGLLRLNGDYVQTGGMTVNGPIGSTDGVTGKIFRSTQGSFYARATNDTSNAHLWFENADGTERGVIYARPQTTTDGEIRLRVRQGTGSTANSEFYFRSINGGEFQANRILASDSLVTKRIAVDTVIHDAKAFGQYDSHSLVNYVYPGTGETNGVNYLRKVRAKSGGTIYHEIVTAQTGLADEVSWWSGDTPVFKLYGIRDDGRMIIRNSLALGTFTTNFPSSDYGNVGVMGDKYLVLGDTVTGLSYKKTGVFDLVGGGYSVASITPDSFRSTRKGIFGRSEDQGATWIMPGTNAALLSVQTQADNNNAGDGQTHIGYNAGGKMNHYFRGTGQMNINTQQGMEINPGILKLVTGSNNVQFYADGTISSIQPIKLDNEIFLTKSNNTAGLKFGAPSQVDGTRTIQWNGGTREGQNKNYVIIKAWGNSFNATGDRSRETVFQVSDSQGYYFYAHRKAPTGDETIGRIEAQFAGDVYAKGIIANGNFRVVGSSALAGNVTMSNGLFVQGGSSITGQVKIGGTANALRIWNAEYGAIFRRSESNFYIIPTNQNEGESGDIHSSLRPVRIGLNDGMVGLGRDSFIVDQNNALTTINSNSRINANFRMQLGQSAYIDAECTDAVRPAGAGSFASQNNEDVRAPFYMNIDRTDASAYVPILKQRYVQGNGCYSLGTLINNGNFRVHYHGGGDNGSTGPQTADFGWEFIKNGDFISPRDLIAGKVRFDRTGNITGGSGNFANLNSTIESLKTDIMSSYPIGAPIPWPSDSVPAGFALMEGQTFDKSAYPKLAVAYPSGVIPDMRGQTIKGKPSGRAVLSAEADGVKAHSHSASASSTDLGTKTTSSFDYGTKGTNSTGGHTHSGSGSTSTNGEHSHYIEAWNGTGVGGNKMSSYAISYRAGGSNTNAAGNHSHTFSFGTSSAGDHSHSVGIGAHTHTVAIGSHGHTITVNSTGNTENTVKNIAFNYIVRLA', 'rnlA: MQELFNNLMELCKDSQRKFFYSDDVSASGRTYRIFSYNYASYSDWLLPDALECRGIMFEMDGEKPVRIASRPMEKFFNLNENPFTMNIDLNDVDYILTKEDGSLVSTYLDGDEILFKSKGSIKSEQALMANGILMNINHHRLRDRLKELAEDGFTANFEFVAPTNRIVLAYQEMKIILLNVRENETGEYISYDDIYKDATLRPYLVERYEIDSPKWIEEAKNAENIEGYVAVMKDGSHFKIKSDWYVSLHSTKSSLDNPEKLFKTIIDGASDDLKAMYADDEYSYRKIEAFETTYLKYLDRALFLVLDCHNKHCGKDRKTYAMEAQGVAKGAGMDHLFGIIMSLYQGYDSQEKVMCEIEQNFLKNYKKFIPEGY', '57A: MSEQTVEQKLSAEIVTLKSRILDTQDQAARLMEESKILQGTLAEIARAVGITGDTIKVEEIVEAVKNLTAESADEAKDEE', 'membrane porin protein C ; LPS', 'https://www.ncbi.nlm.nih.gov/nuccore/29366675'),
(2, 'Acinetobacter', 'johnsonii', 'phage 133', 'gp37-like: MALDPNIGRIKFLRSKTAGRKPTTADLDEGELAINLADRTLYTSTGTAIVDLGFAKGGEVNGDITQTNITTSGTIKATKLEGPLTGNADSATKLQNTRTLSWTGDATGSLSFNGSANVSAALTLANSGVTAGTYKSVTVDTKGRVTAGSDVITGLVTSTAASGTTNAATSNTNTYLNIVETIGSAVTTVGTSTQVTGAGTVTVTSDTAGKLTITGSQNITGSATSITVQGNTTALEGTQLPPDGFRVVRAYSNGYPAPYGNVLQVGGTGQNEVLLGWSGADGGVADTFIRNKRDTASAPWSNWRKVVFEDALNSLTVDKANSLVTARTINGVAFNGTANIVIADSTKLPLTGGTLTGGLTAPNLTATGSIKTITLNATGAGDYSPSGQGAYLSWNRNVGSGKTDFINNRGGGPGGFDWWNGTESSYTQVMSLDSNGVLSAIGGFNGNAATATKLQTARTINGVSFDGSANITIADNTKLPLTGGTITGNLNANALGVNNTASIGGLGLSLYGGSSAGMPEYGLAFSGTATFGTHGGVGGDWATYFTMGGATNRGWIFKSGNGAGGNVASISAAGAITATSILSSGTVTAPTFSGALSGNATTASSLATARMINGVSFNGTANITIADSTKLPLTGGTISGNLQIHNGLIVRNDVLVEGGIQGKTVRNRTGLDEKMYWIGAWNRPDQTNVVVTPVDANTLSFRINIQSGSMYIVNGVSQIHMLTGWDGVNAKFINPVIMSTTDVNAGKQVIDVIANQPNHGITVATNYFWHALTYESYGCKIDKWGGHIGNTRFLVRLKCDEKFVMKAPLVSATSTSNNWFSGTQSGLDYPLQHSSYAVIVPTSIVEEQVVIWNVIENNTDALANNCPYVSIVVKDRIA', 'gp57A: MSNQTPEQIVTELKAQLFDVGQVNHQLNAQLQETQGVLQTIAQTLALTPDENGQITFDQLIAAVTDLIPQPVELEQGG', '', NULL, 'https://www.uniprot.org/uniprot/?query=database%3A%28type%3Aembl+HM114315%29&format=fasta'),
(3, 'Aeromonas', 'salmonicida', 'phage 25', 'gp3: MALNNQSNITNFTLDIPSSAGIKTMLMNVQSASIPGFRIPPTEMPLNSQGTARQNVPSTTTEFDPLIVRVLLDEDFEAYTEMYRWMLSLNDYARQTPTMWGTVNQPPAITLHVLNNSKRDIIASFNYHGAWPSEIGEIEYSYTEDGDVSVTFTITFFFKYFEIEKDGELIRPLRV', 'gp57A: MNAEQQTIASLKIRVFDLSEQLVATQQQAKEFSDALTKIVQIVGVTPADGEDSITLSSIVEAVEALVPSQEVEVVEE', '', NULL, 'https://www.uniprot.org/uniprot/?query=database%3A%28type%3Aembl+DQ529280%29&format=fasta'),
(4, 'Sinorhizobium', 'meliloti', 'phage phiM12', 'S5M6S2: MSKSSYIGANVEVDSDTFTSFINKVNAVIADMSSTVVTAAPVAQANSTNGASTSGNAHVEGVLSAGVLVAPELRGGTMSVPATMVISTNTNPKANTSVSLGTDTARYTNVFMTNANTRNLFANTSQTNNLTVFTAANVNALDANTADITTLTSNSATITTIVNDTLTSNSATITTLSSNTFTSNSATIATADVGALTANTATVKTGTVTTLTSNSATITTLTSNTITVNTDLTVNRNLSIANNISANSLNVTKDVFIAGNLVVQGVTSLASDQALSVNTSIAEFLTVQQVALFNGNTTIGNAATDSLTITAKVASNIIPSGNTYSLGNTTNKFATAHITSMDSPTFTSVMNQTGAAPHYQLEETDTNTVGRVIVSGGQLYVQAGAANSGTTTSSGIIRFAGLNNADVSTLAVRSGGNWQSIYHQGNDGDGSGLDADLFEGQHGPYYLDAANFTGTLADARLPTSMAGKTFTSEVTATSIRLTSAGDITPTSTNHAFQIGLDSGVNVAINTNEIVCRNNGVFTSLMIPGGVTFDPAVTLSVDNGGTGANTAAGARTNLGLAAVAASGSATDLTTGTLNNARLPSSMTGKTFTSNTKISGMLTINHATSAELRLEMNGILSGRVYRDAGGGLVMRRYNSTTGAAEGYIQIVGNGADDLKYNGSTIWHDGNAALDIASVTGMSGAVMWFARNSAPAGFLKANGAAVSRTTYAALYAAIGTTFGAGDGSTTFNLPDLRGEFIRGWDDGRGIDVSRVFGSAQSANIQSHTHSIDPPSTTTTSDTHTHTWSGTTSSDAHTHTFSGTTNTTGAHTHKITTEDNTNLGSLVQSSAGGTDSTTNTGSAGDHSHTFSGTTSSESHTHTVSGTTSGDTHSHTVDIAAFTSGAAGSGTDTRPRNIALLACIKY', 'S5M6K6: MSDNLLQTIDFSFSIKRLAQTNYFVQRVSLPGIEIGEIEQPNRYGGTIFHHGTKLRHDEFSITFKIDENMENWLEIYSWIVGLAAPISAAQHAELKGSTHGLYSDATLVLMSSAKNPLHQFTFTNMFPKSISSIELDVTQTAMTYATATATFQFDHFTHKALKRV', '', NULL, 'https://www.uniprot.org/uniprot/?query=database%3A%28type%3Aembl+KF381361%29&format=fasta'),
(5, 'Salmonella', 'TBD', 'phage S16', 'gp38: MAVQGPWVGSSYVAETGQNWASLAANELRVTERPFWISSFIGRSKEEIWEWTGENHSFNKDWLIGELRNRGGTPVVINIRAHQVSYTPGAPLFEFPGDLPNAYITLNIYADIYGRGGTGGVAYLGGNPGGDCIHNWIGNRLRINNQGWICGGGGGGGGFRVGHTEAGGGGGRPLGAGGVSSLNLNGDNATLGAPGRGYQLGNDYAGNGGDVGNPGSASSAEMGGGAAGRAVVGTSPQWINVGNIAGSWL', 'gp37 like: MTDKIKQLEATVTVLKARLFDLNEQFAETTNTVQSLSDLVSKIVEKIGLEVVEGQVTFEAILEKIDELTATPDDE', 'gp3 like: MNTQQIYNQTNITNFVVDIPDVGLTKGFTLNAQSANIPGIRIPVTDIPSGTMGLGRANLPGSTFEFDPLVIRFLVDEELDSWLQMYQWMIGINNYQTGDNFAWRDGSMPEHVSVHILDNSKTRIVLSIHYYGCWISDLGEVEYNYTEDTDPAVTCQAIMPYKYLQIEKDGRIITTRQNMAEAANQRIGMHPSMRK', 'membrane porin protein C ; LPS', 'https://www.ncbi.nlm.nih.gov/nuccore/456351087'),
(21, 'Escherichia', 'test', 't35', 'df', 'gdsg', 'dsg', 'gdsg', NULL),
(22, 'sdq', 'vdsg', 'fdsg', 'sdf', '', '', 'sdfs', 'sdf');

-- --------------------------------------------------------

--
-- Structure de la table `bddigemen`
--

DROP TABLE IF EXISTS `bddigemen`;
CREATE TABLE IF NOT EXISTS `bddigemen` (
  `ID` varchar(250) DEFAULT NULL,
  `genus` varchar(250) DEFAULT NULL,
  `species` varchar(250) DEFAULT NULL,
  `Phage` varchar(250) DEFAULT NULL,
  `LTFsequenceName` varchar(250) DEFAULT NULL,
  `LTFsequence` text,
  `chaperoneSequenceName` varchar(250) DEFAULT NULL,
  `chaperoneSequence` text,
  `chaperoneSequence2Name` varchar(250) DEFAULT NULL,
  `chaperoneSequence2` text,
  `TargetMotif` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `description` varchar(1026) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bddigemen`
--

INSERT INTO `bddigemen` (`ID`, `genus`, `species`, `Phage`, `LTFsequenceName`, `LTFsequence`, `chaperoneSequenceName`, `chaperoneSequence`, `chaperoneSequence2Name`, `chaperoneSequence2`, `TargetMotif`, `link`, `description`) VALUES
('Ecoli', 'Escherichia', 'coli', 'T4', 'gp37', 'ATGGCTACTTTAAAACAAATACAATTTAAAAGAAGCAAAATCGCAGGAACACGTCCTGCTGCTTCAGTATTAGCCGAAGGTGAATTGGCTATAAACTTAAAAGATAGAACAATTTTTACTAAAGATGATTCAGGAAATATCATCGATCTAGGTTTTGCTAAAGGCGGGCAAGTTGATGGCAACGTTACTATTAACGGACTTTTGAGATTAAATGGCGATTATGTACAAACAGGTGGAATGACTGTAAACGGACCCATTGGTTCTACTGATGGCGTCACTGGAAAAATTTTCAGATCTACACAGGGTTCATTTTATGCAAGAGCAACAAACGATACTTCAAATGCCCATTTATGGTTTGAAAATGCCGATGGCACTGAACGTGGCGTTATATATGCTCGCCCTCAAACTACAACTGACGGTGAAATACGCCTTAGGGTTAGACAAGGAACAGGAAGCACTGCCAACAGTGAATTCTATTTCCGCTCTATAAATGGAGGCGAATTTCAGGCTAACCGTATTTTAGCATCAGATTCGTTAGTAACAAAACGCATTGCGGTTGATACCGTTATTCATGATGCCAAAGCATTTGGACAATATGATTCTCACTCTTTGGTTAATTATGTTTATCCTGGAACCGGTGAAACAAATGGTGTAAACTATCTTCGTAAAGTTCGCGCTAAGTCCGGTGGTACAATTTATCATGAAATTGTTACTGCACAAACAGGCCTGGCTGATGAAGTTTCTTGGTGGTCTGGTGATACACCAGTATTTAAACTATACGGTATTCGTGACGATGGCAGAATGATTATCCGTAATAGCCTTGCATTAGGTACATTCACTACAAATTTCCCGTCTAGTGATTATGGCAACGTCGGTGTAATGGGCGATAAGTATCTTGTTCTCGGCGACACTGTAACTGGCTTGTCATACAAAAAAACTGGTGTATTTGATCTAGTTGGCGGTGGATATTCTGTTGCTTCTATTACTCCTGACAGTTTCCGTAGTACTCGTAAAGGTATATTTGGTCGTTCTGAGGACCAAGGCGCAACTTGGATAATGCCTGGTACAAATGCTGCTCTCTTGTCTGTTCAAACACAAGCTGATAATAACAATGCTGGAGACGGACAAACCCATATCGGGTACAATGCTGGCGGTAAAATGAACCACTATTTCCGTGGTACAGGTCAGATGAATATCAATACCCAACAAGGTATGGAAATTAACCCGGGTATTTTGAAATTGGTAACTGGCTCTAATAATGTACAATTTTACGCTGACGGAACTATTTCTTCCATTCAACCTATTAAATTAGATAACGAGATATTTTTAACTAAATCTAATAATACTGCGGGTCTTAAATTTGGAGCTCCTAGCCAAGTTGATGGCACAAGGACTATCCAATGGAACGGTGGTACTCGCGAAGGACAGAATAAAAACTATGTGATTATTAAAGCATGGGGTAACTCATTTAATGCCACTGGTGATAGATCTCGCGAAACGGTTTTCCAAGTATCAGATAGTCAAGGATATTATTTTTATGCTCATCGTAAAGCTCCAACCGGCGACGAAACTATTGGACGTATTGAAGCTCAATTTGCTGGGGATGTTTATGCTAAAGGTATTATTGCCAACGGAAATTTTAGAGTTGTTGGGTCAAGCGCTTTAGCCGGCAATGTTACTATGTCTAACGGTTTGTTTGTCCAAGGTGGTTCTTCTATTACTGGACAAGTTAAAATTGGCGGAACAGCAAACGCACTGAGAATTTGGAACGCTGAATATGGTGCTATTTTCCGTCGTTCGGAAAGTAACTTTTATATTATTCCAACCAATCAAAATGAAGGAGAAAGTGGAGACATTCACAGCTCTTTGAGACCTGTGAGAATAGGATTAAACGATGGCATGGTTGGGTTAGGAAGAGATTCTTTTATAGTAGATCAAAATAATGCTTTAACTACGATAAACAGTAACTCTCGCATTAATGCCAACTTTAGAATGCAATTGGGGCAGTCGGCATACATTGATGCAGAATGTACTGATGCTGTTCGCCCGGCGGGTGCAGGTTCATTTGCTTCCCAGAATAATGAAGACGTCCGTGCGCCGTTCTATATGAATATTGATAGAACTGATGCTAGTGCATATGTTCCTATTTTGAAACAACGTTATGTTCAAGGCAATGGCTGCTATTCATTAGGGACTTTAATTAATAATGGTAATTTCCGAGTTCATTACCATGGCGGCGGAGATAACGGTTCTACAGGTCCACAGACTGCTGATTTTGGATGGGAATTTATTAAAAACGGTGATTTTATTTCACCTCGCGATTTAATAGCAGGCAAAGTCAGATTTGATAGAACTGGTAATATCACTGGTGGTTCTGGTAATTTTGCTAACTTAAACAGTACAATTGAATCACTTAAAACTGATATCATGTCGAGTTACCCAATTGGTGCTCCGATTCCTTGGCCGAGTGATTCAGTTCCTGCTGGATTTGCTTTGATGGAAGGTCAGACCTTTGATAAGTCCGCATATCCAAAGTTAGCTGTTGCATATCCTAGCGGTGTTATTCCAGATATGCGCGGGCAAACTATCAAGGGTAAACCAAGTGGTCGTGCTGTTTTGAGCGCTGAGGCAGATGGTGTTAAGGCTCATAGCCATAGTGCATCGGCTTCAAGTACTGACTTAGGTACTAAAACCACATCAAGCTTTGACTATGGTACGAAGGGAACTAACAGTACGGGTGGACACACTCACTCTGGTAGTGGTTCTACTAGCACAAATGGTGAGCACAGCCACTACATCGAGGCATGGAATGGTACTGGTGTAGGTGGTAATAAGATGTCATCATATGCCATATCATACAGGGCGGGTGGGAGTAACACTAATGCAGCAGGGAACCACAGTCACACTTTCTCTTTTGGGACTAGCAGTGCTGGCGACCATTCCCACTCTGTAGGTATTGGTGCTCATACCCACACGGTAGCAATTGGATCACATGGTCATACTATCACTGTAAATAGTACAGGTAATACAGAAAACACGGTTAAAAACATTGCTTTTAACTATATCGTTCGTTTAGCATAA', 'rnlA', 'ATGCAAGAACTTTTTAACAATTTAATGGAACTATGTAAGGATTCGCAGCGTAAGTTTTTTTACTCAGATGATGTAAGTGCATCTGGAAGAACTTACAGAATTTTCTCATATAATTATGCATCTTATTCTGATTGGTTACTTCCAGATGCACTAGAATGTCGTGGAATTATGTTTGAAATGGATGGAGAAAAACCAGTAAGAATTGCTTCTCGTCCTATGGAAAAGTTTTTTAACTTGAATGAAAATCCGTTCACGATGAATATCGATTTAAACGATGTTGATTATATTCTAACAAAAGAAGACGGGTCTTTGGTATCAACTTATTTAGACGGTGATGAAATTCTGTTCAAATCAAAGGGTTCAATCAAATCTGAGCAGGCTTTAATGGCTAATGGAATTTTGATGAATATTAATCACCATCGGTTGCGTGATAGACTTAAAGAATTAGCTGAAGATGGATTTACTGCTAACTTCGAATTCGTTGCCCCGACGAATAGAATCGTTCTTGCTTATCAAGAGATGAAAATTATTTTACTGAATGTTCGTGAAAACGAAACGGGTGAATACATTTCATACGATGATATTTATAAAGATGCTACTCTTCGTCCGTATCTAGTTGAACGATACGAAATCGATAGCCCTAAATGGATAGAAGAAGCTAAAAATGCAGAAAACATCGAAGGCTATGTTGCTGTGATGAAAGATGGTTCTCATTTTAAAATTAAGTCTGACTGGTACGTGTCTCTTCATAGTACAAAAAGTTCATTAGATAATCCAGAAAAATTGTTTAAGACTATTATTGATGGTGCATCAGATGATCTTAAAGCAATGTATGCTGACGATGAATATTCATACAGAAAAATTGAAGCATTTGAAACGACTTATCTGAAGTACTTAGACCGAGCTCTGTTTTTAGTTCTTGACTGTCATAATAAGCATTGCGGTAAGGATAGAAAGACTTATGCAATGGAAGCACAAGGTGTTGCTAAAGGTGCTGGAATGGATCACCTGTTCGGTATCATCATGAGCTTATACCAGGGGTACGATAGTCAAGAAAAGGTCATGTGTGAAATCGAACAGAATTTTTTGAAAAATTATAAAAAATTTATCCCAGAAGGATACTAA', 'gp57A', 'ATGTCTGAACAAACTGTTGAACAAAAACTGTCTGCTGAAATCGTAACTCTGAAATCTCGCATTCTTGATACGCAGGATCAAGCTGCTCGTCTGATGGAAGAATCCAAAATTCTGCAAGGAACTTTGGCTGAAATTGCTCGTGCAGTAGGTATCACTGGCGATACTATCAAAGTTGAAGAAATCGTTGAAGCTGTCAAAAATCTTACTGCTGAATCTGCAGATGAAGCAAAAGATGAAGAATGA', 'membrane porin protein C ; LPS', 'https://www.ncbi.nlm.nih.gov/nuccore/29366675', NULL),
('Ajohnsonii', 'Acinetobacter', 'johnsonii', '133', 'gp37like', 'ATGGCTTTAGATCCAAACATTGGAAGAATCAAATTTCTTCGATCAAAAACCGCTGGGCGTAAGCCGACAACAGCTGACCTAGATGAAGGCGAACTAGCTATTAACCTCGCTGATCGAACTTTATATACAAGTACAGGTACTGCTATTGTCGATTTAGGCTTTGCTAAAGGCGGCGAAGTTAATGGTGACATTACACAAACTGGTAATATTACCACATCCGGTACTATTAAAGCCACTAAGTTGGAAGGGCCTTTAACTGGTAATGCTGACTCTGCAACAAAATTGCAAAACACTAGAACTTTATCATGGACAGGCGATGCTACAGGATCATTATCATTCAATGGTTCTGCAAACGTATCAGCTGCTTTGACATTAGCTAACTCAGGTGTAACTGCTGGTACTTATAAATCAGTAACTGTTGATACAAAAGGACGAGTAACAGCAGGTAGTGATGTTATTACAGGTTTAGTTACATCAACTGCAGCTTCTGGAACAACTAATGCTGCAACATCAAATACAAATACATATTTGAACATTGTTGAAACTATTGGATCTGCTGTAACTACCGTAGGAACATCAACACAAGTGACAGGTGCAGGAACTGTAACAGTTACATCTGATACCGCCGGAAAATTAACAATTACAGGTTCTCAAAATATTACTGGGTCGGCAACTAGTATAACTGTTCAAGGGAACACTACTGCATTAGAGGGTACTCAACTACCACCGGATGGTTTTAGAGTTGTCCGTGCATATAGCAACGGATACCCTGCACCCTATGGTAACGTCCTTCAAGTTGGTGGAACTGGACAAAATGAAGTTTTACTCGGATGGTCTGGTGCTGATGGAGGTGTAGCAGATACATTTATTCGTAATAAAAGAGATACTGCTTCAGCTCCTTGGTCGAATTGGAGAAAGGTCGTCTTTGAAGATGCGTTAAATTCACTTACTGTCGACAAAGCAAATTCTCTTGTAACTGCAAGAACTATTAATGGCGTAGCATTTAATGGTACAGCTAATATTGTGATTGCGGATAGCACTAAATTACCATTAACTGGCGGTACATTAACTGGCGGTTTGACTGCACCCAATCTTACGGCTACTGGTAGTATAAAAACTATTACACTTAATGCTACTGGTGCGGGTGATTATTCCCCATCAGGTCAGGGTGCATACCTTTCATGGAATAGAAATGTTGGATCGGGTAAAACTGACTTTATTAATAATAGAGGTGGTGGCCCAGGCGGGTTTGATTGGTGGAATGGAACCGAAAGTAGTTACACCCAAGTAATGAGTCTAGACTCAAATGGCGTGTTATCCGCTATAGGTGGTTTTAACGGTAATGCTGCCACCGCAACTAAACTCCAAACGGCTCGCACGATCAATGGCGTTTCGTTCGATGGTAGCGCCAACATTACCATTGCAGATAATACTAAATTACCATTAACTGGCGGTACAATTACAGGTAACTTGAATGCGAACGCTTTGGGTGTAAACAACACAGCGTCAATAGGCGGTTTAGGTCTTTCGCTTTACGGTGGTTCGAGTGCAGGAATGCCTGAGTACGGTCTTGCGTTCTCAGGTACAGCAACCTTTGGTACACATGGAGGTGTAGGTGGTGATTGGGCAACATACTTCACAATGGGCGGAGCGACAAACCGAGGATGGATATTCAAATCAGGAAACGGTGCAGGAGGTAACGTTGCATCAATCTCTGCAGCAGGCGCAATAACAGCCACAAGTATTCTCAGCTCAGGCACTGTAACTGCTCCTACATTTAGTGGTGCTTTGTCAGGTAATGCTACTACTGCGTCTAGCTTAGCTACCGCTCGTATGATCAATGGCGTATCATTTAATGGTACAGCAAATATCACTATTGCGGATAGCACTAAATTACCATTAACTGGCGGTACAATATCGGGTAATTTGCAGATCCATAATGGTTTAATTGTGCGCAATGATGTATTGGTAGAAGGAGGAATACAAGGTAAAACTGTTAGAAACCGCACAGGTCTTGATGAAAAAATGTATTGGATTGGTGCTTGGAATAGACCAGACCAAACAAACGTTGTTGTGACTCCTGTTGATGCAAATACTTTATCGTTTAGAATAAATATTCAAAGTGGTTCAATGTATATTGTAAACGGTGTATCACAAATCCACATGTTGACTGGTTGGGGGGATGGAGTCAATGCCAAATTCATTAATCCTGTTATTATGTCAACTACCGACGTAAATGCCGGAAAACAAGTTATTGATGTTATTGCTAATCAGCCAAATCACGGAATAACTGTTGCAACCAACTATTTTTGGCATGCATTAACTTATGAATCTTATGGATGTAAAATTGATAAATGGGGCGGTCATATTGGCAATACTAGATTCTTAGTCCGTTTAAAATGTGATGAAAAATTTGTTATGAAAGCCCCTTTGGTTTCAGCTACATCTACAAGCAACAACTGGTTTAGTGGAACACAAAGTGGATTGGATTACCCATTACAACATTCATCTTATGCTGTGATTGTACCTACTTCTATTGTCGAAGAGCAAGTTGTTATATGGAACGTTATTGAGAATAACACAGACGCTCTAGCAAATAACTGTCCATATGTATCTATCGTGGTTAAAGATAGAATCGCCTAA', 'gp57A', 'ATGAGCAATCAAACTCCAGAACAAATCGTCACTGAATTAAAAGCACAATTGTTTGATGTAGGTCAAGTCAACCATCAATTAAATGCCCAGCTTCAAGAAACTCAAGGGGTTCTGCAAACAATCGCGCAGACTTTAGCTCTGACCCCCGATGAAAATGGGCAGATTACGTTTGATCAATTAATTGCGGCAGTCACTGATCTTATCCCTCAACCTGTTGAGCTTGAACAAGGTGGCTAA', NULL, '', NULL, 'https://www.uniprot.org/uniprot/?query=database%3A%28type%3Aembl+HM114315%29&format=fasta', NULL),
('Asalmonicida', 'Aeromonas', 'salmonicida', '25', 'gp3', 'ATGGCAGATTTAAAAGTTGGAACCACGATCGGTGGTTCACCTGTTTGGCACCAAGGCAATCTTGCGCTGGTACCAAGCGGTAATGCTATCCTGTACAAGGGTGCAAGAATTTATTCGGAAAACGATAAACCGAGTGCAAATGAACTTCAGGTAGTATCTCGTGCTGGCGATACTATGACTGGTATGCTGAACGTTGAAACTTCCACTGATTACCAATTAGTGCTTAAATCGAGTGTTAGTGGTTCTGCTTTATATTCGTTTTCAAAGGGAAATACGCTTCAGTCATATGTTGGAACTGATGCGGCTGGTGACTTTAAAGTCGCAATGACTGACGCCAACGGTTCATGGGC\r\nATTTGATGGGCTTAAAATCGCTAAATCTAACGGTGATGTTTCTCTGAAAGGAGCGTTGGTATCCACTAATACTGGAAACTTTGACATAAAATATGGAAGTATTCAGTTCATTCGTGCAAACTCGTCTAAAAACGTGTACATTGGTGCACCTGGTGGAACTGATTTGGTGCTCGGTTATGCTCAAGATGGCATGACCACTACAAAAATTCGAATGGATTCTGCGGTATACAATAGGGCAGGCGGACTGTTAATTAGTGATACTGGACTTATTCAGCGTTCTGCTATGGATAACCGGTATTACAATCAAACAGAGTCTGATGCGAGATTTATCAGACTGAACACCAATACTG\r\nCCACTAATGGTTACTTGCTGAGCAAATCGTCTGATATAGGAACACCTCATAACCTGTCAATGGGCTATTCCGGATTCTTCAGACATAACAGTCAGGGCGGATTCAGCGGATTGACTATTAACGTTTCTCATCCATTGGCCAGTAACGGTGCGAATGCCCGTGGTATTACTTTCGATTACGGAAGTATCGGTTATGGAATGTACACATATGCATACGACTCGGCAGGCACTAAATTAGCCAACCGGAAAATCTATACCGAAGCTGATAAACCTACTCCTGCGGAAATTGGTGCATTAGCTGCCGGCGCAAATGCTGTATCTGCATCCAAGTTGCAAACCGCAAGAACTATC\r\nAGTTTGACTGGAGGCGCAACTGGCTCAGTATCGTTCGATGGTAGTGCAAATGCTTCTATAGCAGTGACCATAACAAATAACAGTCATACTCACTCAGATTACGTCAAAAAAACCGGCGACACAATGTCGGGCAATTTGTCTACTCCGAAAGTTCTGCTGACTGATGCTCAGGGTGCTGAAGCTAATTCTGTGACACGTCGCGATTTTGTTGAATCGACTGTTACTGCTGCTGGTAAAGGTGTGAAAGATTTGACGATCACACTTCCTGCTGGAGCACCTGCAACTGGCTACATCCCGGTTATGTTTAGAACAAATGGTACATCCGACTCATTTGTCTTTATTGATACTTCATTTAACGTAGGGGAGCATCCTATGAACAATTGTTCGTTCATAGGAAATGTTCGTGCCAGCGGATGGTCTGACGGTAGAAGTTATGCATATGGCAAGTTTACGATTTACTCTACATCGGAAAGAGCAATTCACTCAATCCACGCGCCATTTGAGGATAGTTTTGCGTATGTTGTTTACGTTGAAACACGTGCTTTCCCGATAACAGTTAGAGTCGATATCGGAACAACCGTCACTGCTCATGCGACTGATGTTACATATGGGACATCTGTCTTTAAGGTTAACGGCCAAGTAAGTGGAAATACAAAAACCATTGTTCTTGGGAATTTTGATAAAGACTCTGGGACTTATAACGGAAGCAATCGCGTTTATGACACTGGATATAACCCAACTCCAGAAGCAGTAGGAGCTCTTCCAGTCAATGGAAATGCTGTAACTGCTTCTAGATTGCAGACAGCTAGGCTTATTGCTGGCGTTCCATTTGATGGTACATCGAATATTTCGATTTCTGCAACTAACGTAGGCGCGGTTAATAAAACTGGCGATGCAATGACTGGGAACCTGAGCGTCGCAGCGGATTACCTTCTGGTAAAGAAGTCCTCCACTTTCTCTGGCATAAGACTTCGCAGTACAGACGTCGAAGCAGTAGCTGAATTACTGAACGACGCTGGAGCTATCACTGGCGCGTACGGTGGAAATACAGAAACTGGCCGCTTGAATATTACTCGGAACAACCCGGGTACAGGAGCGTACGCGTACACCTATATCTCCTGCGAGCCGAACGGGACCGTCTCCTCAGCAGACGCCATTGTAACCATCCTCAACCCTAGAAGTGGAACTTCCCAGGGAACTTCAGAAAACTCCCTGACCCGCAAAGACTACGTTGACGAGGAGTTGAGCAAGAAGCTTAACACTGCCGGCGGCACTGTAACTGGCTTCCTAACCCTGACAAGCGCAACCAACGCGATGACTATCGAAGCTTCTGCCGGTAACTCGTCCTACATCCTTGGACGCACAGCGGGAGTGTCTAATTGGTATGTCGGGCGCGGCGGTTCCAGCGACGACGTCACCTTGCACAGCTATATCCACAACAATTTCCTGGCGCTCAAATCTGACCATGTGCAACTTGCTAAGACGCTTCGAGCTCCAGGAGCAGTGTTCTCGGCAGAAGTAGAGGTTAATATTGGAAGTGGCCAGAGAGCCGCAATCATTGGAGGTGTGACCTCCGGGATGATGCTACGGGACAGCGCAGGAGCTCTCAAGTGGTATGCTTATTACGAGCCTACCCTAAACCAGTATCGAATTGCAAGGTACGCAACAGGCACATATACCGACGCCCCGTTGATCATCACCGCCACTGGAGAAACTTTACTGCAGCGCCCGAGGACGCAATCTGGCCAAGAACTTGCAGTTAACGCGCTAACTCGGAAGGACTATGTTGATGGTGAAATAGCTAAACAGGTATCCAAAACTGGTGATACAATGACAGGCACTCTCATTATCACCAAGGATGCTAATGCTATTACTTTGAACCCAGCACCAAATACAGCTTCTTATATCCTTGGTCAACAAGGTGGTGTTGGTAGTTGGTATGTTGGTAAAGGCTCGCCAGCATCAAATGACGTAACACTCGAGAGTTATACACATTCGACGTATATATCTCTTTCATCAGATCGTATAAACGTAAATAAAAACATAGTAACTTCAGTAGCTCAAAGTGAATTAGCTAATTCATTAACAAGAAAAGATTATGTTGATGGTAAGTTGGACAAATCAGGTGGTGTTTTATCTGGGTCGGTAACAGTTGTTGGTGCAACCGCTTCCTCGGTAACCCATAATGAAAACGGAATACACTATAAGAACAGTGGGCTGATGCGGTGGAATGCTTATCATGACATTAGTAACGATAGTTACTCTATTATAAAGTATAATACCAGTGGTGCTTACGTTGGTAGTGCAATGTCGATAGACTACTCTAGTTTAGCAACAACGTTTTCTGGTGCTCTGTATACCCCAACTCTTACGGTCGGCGGTGGTAATATAGATATAAACCACGGCGGAACAAACCAGATGCTACAATTCCATCACCCGGGTGTAGCTGCTGCGATGATATATCAATCTAGCAGTAACTTGTTATTCTGTCAAGGTAATGGGGCTTGGGATAATACAAACACATGGCTTGTGTTGAACAACAGCGGAGCGGCTTTTAACGGAATAGTAGCCGCTCCCGATTTTAACGTTACATCAGATCGTAGATTGAAATCCAACTTCAAAGCTATAGATAATCCGCTATCTAAGGTTGAACAGTTGACCGGTCAAATATATGATAAAAAACTAAAGGATGGTGGAATAGTTAGTGAAGTGGGGCTTATTGCGCAGCATGTGCAAAAGGTTCAACCCATGTCCGTTAGAGAAGGTGACGATGGTATGCTGTCAATATCTCCTTCCGGCATCATTGCTCTTTTGGTTGAAGCAGTGAAGGAACTTTCTGAAAGGATAAAAGTTTTGGAAAGTAAATAA', 'gp57A', 'ATGAACGCAGAACAACAAACCATCGCTTCCCTGAAAATTCGAGTTTTTGATCTGAGCGAGCAACTTGTTGCTACTCAACAACAAGCAAAAGAATTTTCAGATGCCCTCACCAAAATCGTCCAAATTGTGGGTGTGACTCCGGCTGATGGCGAAGATAGTATTACCCTTTCTTCTATTGTAGAAGCAGTAGAAGCTCTGGTTCCTTCTCAAGAAGTCGAAGTGGTAGAAGAATAA', NULL, '', NULL, 'https://www.uniprot.org/uniprot/?query=database%3A%28type%3Aembl+DQ529280%29&format=fasta', NULL),
('STBD', 'Salmonella', 'TBD', 'S16', 'gp37+l133_gp019', 'ATGGCTACTATAAAACAAATACAATTTAAAAGAACTAAAGTAGCAGGCTCTCGTCCTACTGCCGCTCAACTCGCTGAAGGCGAACTTGCTATTAACTTAAAAGACCGCACTATTTTCACGAAAGACGATTTGAACCAAATCATTGATTTAGGTTTTGCAAAAGGCGGTGAAGTATCAGGAGATATCACGCAGATTGGTAATTATACCCAAACTGGGAACTATAATTTAACCGGCGATGCTACTATATCAGGCAAAACTACTACAAGCACACTGGATGTTGGGTCTGTTTCAGATCTAAGACAGACAAACTTTAGACCAGTATTAAGCACAACAACTGGTTCTAATTTTATTATATCAAACTCTGGCGGCTTGATTAAACCAATTACTTTGACGGTAGAAGGCACAGCTACAAGTTCAAACACTATTCTGCGCCATTCAGTTGATACTACTGTAGCAGCTTCTGGATTTATCGATTCAATTAATGTTTCTTTAAATCCGACGGACGGCGCTCTTGTTACAGCTCTCAATGGTACTGTGAATATCGGTAGTTCCCTTAAAACTCCTAAACTTTCAGTTTCTGGCGCGGAAACTGCTTTGGGAGATTATAGTATTTCAATCGGTGATAATGATACAGGATTTAAATGGAATTCTGATGGTGTATTCAGCTTAGTTACTGACAGTAATTCAATTTATACATACTCTCGTGATAGGACATATTCTAACCGTCCAACAAATTTCCGGTATACGTCTGACTTTGATGCTACGACACCTGCTTTAGCTCCGCCAGGCACATGGTTAGCTTCAGTTGAAACTGCAATAGACGGTAACGCTTACGGCGATGGAATGAGCTATCTCGGTTATAAAGATACCGCAGGTTATAGTTTTTATTTCCGCGGCGGCGGCACTTTTAACGTAGCTTCTAAAGGTGGATTTAATGTAGACACAGCTGCGGCTTTTGCCAAAACGGTTGATGTATCTGATATTCTAACATGCAGCTCTATTATTAAAGCTAAAGGCCCAGGTCAAGTTGATGTTACTAGTGCTGGTAATATCGCACTTGGTGGAACTATTCAATGGGTGCCTTCGTATATGAGCGGAAGCCCAAATAGAGCACGAGATACAATAGCTACAGCAGCTTGGGGCGATGCCGACCAACGAATTAACGTATTAGAAACATCTGACCCGCATGGTTGGTGGTATTATATACAGCGCGCAGGTTCTGGAAGTTCTTCTCCTACGGGAATAGAAGGGCGAGTCAATGGCTCTTGGCAGGCATCTGATTTAATTTCTGATAATACTCTAAGAGTAGCTGGAGCTTTCACTTGTACTAGAAGAAACTCCGCAGGATGGGGTGATAACGCTGGATGGTATGCTGGAGCAACACCAGTAGTAGCTAACCAAGGAAACGTTCAAGAAATGGACCCCGGTGTAGGCGGTTTTTATCCTGGATTTGCTCAATATAACTATAATGGCACTGGATGGAACCAAGCATTTGTTCTGGGGTTACTAGGCCAAGGTGTTCAGAGATGGCGTCGTGGTGTATTAGCTCTTAGAGGCGATGGCCCTGTTGATGCTGGACAACAAATTGCTCGTTGGTATTTTAGTCAAGAAGACGGAAGTTTGGAATCAGAAGGTCCGCTTAAAGCTCCTAGTGTTCAAGCTGGACAAATAACATCTTTTGGTGTAAACGTTACAAACGCGTTAGGCAGTGCGTCTATAGCTATTGGCGATAACGATACCGGATTGCGCTGGGGCGGCGATGGTATCGTTCAAATTGTAGCTAATAACGCTATCGTAGGCGGATGGAATTCAACAGATATTTTTACTGAAGCTGGTAAACATATAACATCCAATGGAAATTTAAATCAATGGGGCGGAGGCGCAATTTATTGTAGAGACCTTAATGTTAGTTCCGACAGAAGAATTAAGAAAGACATAAAAGCATTTGAAAATCCCGTAGATATTTTAAGCACTATAGGCGGTTATACTTATCTTATTGAAAAAGGATTTAATGAAGATGGAAGTCAGGCTTACGAAGAGTCCGCTGGATTAATTGCTCAAGAAGTAGAAGCTGTTCTTCCTCGTTTAGTTAAAATATCCAATGATGGAACAAAAGATGTTAAAAGACTTAATTATAATGGTATAACAGCTTTAAATACTGCTGCTATAAATGTACATACTAAAGAAATTAATGAGCTCAAAAAGCAATTAAAAGAGCTTAAAGACATTGTTAAGTTTTTAACTAAATAAATGGCAGTTCAAGGACCTTGGGTAGGTTCGTCTTATGTCGCTGAAACAGGTCAAAACTGGGCCTCATTAGCGGCGAATGAATTAAGAGTAACGGAGAGGCCCTTTTGGATTTCCTCATTTATAGGGCGCTCTAAAGAAGAAATTTGGGAATGGACTGGAGAAAATCACAGTTTCAACAAAGATTGGTTAATAGGCGAACTTCGCAATAGAGGTGGTACTCCTGTAGTAATTAATATAAGAGCTCATCAAGTGTCTTATACTCCAGGCGCACCTTTATTTGAATTTCCCGGAGACCTTCCAAATGCATATATTACACTTAACATTTATGCAGATATATATGGAAGAGGTGGTACTGGTGGAGTTGCTTATTTAGGCGGAAACCCCGGCGGAGACTGTATTCATAATTGGATTGGAAACAGACTTAGAATAAACAACCAAGGCTGGATTTGTGGTGGCGGAGGCGGCGGCGGTGGCTTTCGTGTTGGACATACTGAAGCTGGTGGTGGTGGCGGACGACCTTTGGGAGCGGGCGGAGTTTCAAGCTTAAATCTAAACGGAGACAATGCTACTTTGGGTGCTCCCGGGCGAGGATATCAACTTGGAAACGATTATGCAGGTAACGGCGGCGATGTCGGTAATCCTGGTTCAGCTAGTTCAGCCGAAATGGGCGGTGGAGCGGCTGGACGAGCTGTTGTAGGAACCTCACCTCAATGGATAAATGTTGGTAATATTGCTGGTTCTTGGTTATAA', 'l133_gp134', 'ATGACTGATAAAATTAAACAGCTTGAAGCTACTGTAACTGTTCTTAAAGCTCGTCTTTTTGATTTGAATGAGCAATTTGCTGAAACTACTAACACGGTTCAGTCGCTAAGCGATTTGGTAAGTAAAATTGTAGAAAAAATCGGTCTAGAAGTTGTTGAAGGCCAAGTGACCTTTGAAGCTATTCTTGAAAAAATTGATGAGTTAACCGCAACGCCGGATGATGAATGA', 'l133_gp132', 'TTGAACACACAACAGATATACAATCAAACCAACATAACTAACTTTGTTGTAGACATTCCGGATGTTGGCTTGACAAAAGGTTTTACGCTTAACGCGCAATCAGCTAATATACCTGGTATAAGAATTCCTGTTACTGATATTCCCTCTGGCACTATGGGTCTTGGACGAGCGAACCTTCCTGGTTCAACGTTCGAATTCGACCCACTGGTTATCAGATTTTTGGTGGATGAAGAACTGGACTCTTGGCTGCAGATGTATCAATGGATGATAGGCATAAACAACTATCAAACTGGAGATAACTTCGCATGGCGCGACGGCAGTATGCCTGAACACGTCAGTGTTCATATTTTAGACAATAGCAAAACTAGAATTGTTTTGTCTATTCATTACTATGGATGTTGGATAAGCGACTTAGGCGAAGTGGAATACAACTACACAGAAGATACTGACCCAGCTGTAACATGTCAAGCCATCATGCCGTATAAGTATTTGCAAATAGAAAAAGATGGTAGAATTATTACAACACGGCAAAATATGGCCGAGGCTGCTAATCAACGCATTGGAATGCATCCATCTATGAGGAAATAA', 'membrane porin protein C ; LPS', 'https://www.ncbi.nlm.nih.gov/nuccore/456351087', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `promoteur`
--

DROP TABLE IF EXISTS `promoteur`;
CREATE TABLE IF NOT EXISTS `promoteur` (
  `Name` varchar(250) NOT NULL,
  `Sequence` text,
  `strength` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `promoteur`
--

INSERT INTO `promoteur` (`Name`, `Sequence`, `strength`) VALUES
('BBa_J23119', 'TTGACAGCTAGCTCAGTCCTAGGTATAATGCTAGC', 'n/a'),
('BBa_J23100', 'TTGACGGCTAGCTCAGTCCTAGGTACAGTGCTAGC', '1'),
('BBa_J23101', 'TTTACAGCTAGCTCAGTCCTAGGTATTATGCTAGC', '0.70'),
('BBa_J23102', 'TTGACAGCTAGCTCAGTCCTAGGTACTGTGCTAGC', '0.86'),
('BBa_J23103', 'CTGATAGCTAGCTCAGTCCTAGGGATTATGCTAGC', '0.01'),
('BBa_J23104', 'TTGACAGCTAGCTCAGTCCTAGGTATTGTGCTAGC', '0.72'),
('BBa_J23105', 'TTTACGGCTAGCTCAGTCCTAGGTACTATGCTAGC', '0.24'),
('BBa_J23106', 'TTTACGGCTAGCTCAGTCCTAGGTATAGTGCTAGC', '0.47'),
('BBa_J23107', 'TTTACGGCTAGCTCAGCCCTAGGTATTATGCTAGC', '0.36'),
('BBa_J23108', 'CTGACAGCTAGCTCAGTCCTAGGTATAATGCTAGC', '0.51'),
('BBa_J23109', 'TTTACAGCTAGCTCAGTCCTAGGGACTGTGCTAGC', '0.04'),
('BBa_J23110', 'TTTACGGCTAGCTCAGTCCTAGGTACAATGCTAGC', '0.33'),
('BBa_J23111', 'TTGACGGCTAGCTCAGTCCTAGGTATAGTGCTAGC', '0.58'),
('BBa_J23112', 'CTGATAGCTAGCTCAGTCCTAGGGATTATGCTAGC', '0.00'),
('BBa_J23113', 'CTGATGGCTAGCTCAGTCCTAGGGATTATGCTAGC', '0.01'),
('BBa_J23114', 'TTTATGGCTAGCTCAGTCCTAGGTACAATGCTAGC', '0.10'),
('BBa_J23115', 'TTTATAGCTAGCTCAGCCCTTGGTACAATGCTAGC', '0.15'),
('BBa_J23116', 'TTGACAGCTAGCTCAGTCCTAGGGACTATGCTAGC', '0.16'),
('BBa_J23117', 'TTGACAGCTAGCTCAGTCCTAGGGATTGTGCTAGC', '0.06'),
('BBa_J23118', 'TTGACGGCTAGCTCAGTCCTAGGTATTGTGCTAGC', '0.56');

-- --------------------------------------------------------

--
-- Structure de la table `ribosome`
--

DROP TABLE IF EXISTS `ribosome`;
CREATE TABLE IF NOT EXISTS `ribosome` (
  `name` varchar(250) NOT NULL,
  `sequence` text,
  `strength` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ribosome`
--

INSERT INTO `ribosome` (`name`, `sequence`, `strength`) VALUES
('BBa_J61100', 'AAAGAGGGGACAA', '0.047513'),
('BBa_J61101', 'AAAGACAGGACCC', '0.119831'),
('BBa_J61102', 'AAAGATCCGATGT', NULL),
('BBa_J61103', 'AAAGATTAGACAA', NULL),
('BBa_J61104', 'AAAGAAGGGACAG', NULL),
('BBa_J61105', 'AAAGACATGACGT', NULL),
('BBa_J61106', 'AAAGATAGGAGAC', NULL),
('BBa_J61107', 'AAAGAAGAGACTC', '0.065454'),
('BBa_J61108', 'AAAGACGAGATAT', NULL),
('BBa_J61109', 'AAAGACTGGAGAC', NULL),
('BBa_J61110', 'AAAGAGGCGAATT', NULL),
('BBa_J61111', 'AAAGAGGCGATAC', NULL),
('BBa_J61112', 'AAAGAGGTGACAT', NULL),
('BBa_J61113', 'AAAGAGTGGAAAA', NULL),
('BBa_J61114', 'AAAGATGAGAAGA', NULL),
('BBa_J61115', 'AAAGAAGGGATAC', NULL),
('BBa_J61116', 'AAAGACATGAGGC', NULL),
('BBa_J61117', 'AAAGACATGAGTT', '0.038518'),
('BBa_J61118', 'AAAGAGACGAATC', NULL),
('BBa_J61119', 'AAAGATTTGATAT', NULL),
('BBa_J61120', 'AAAGACGCGAGAA', NULL),
('BBa_J61121', 'AAAGAGACGAGTC', NULL),
('BBa_J61122', 'AAAGAGAGGAGCC', NULL),
('BBa_J61123', 'AAAGAGATGACTA', NULL),
('BBa_J61124', 'AAAGAGCCGACAT', NULL),
('BBa_J61125', 'AAAGAGCCGAGTT', NULL),
('BBa_J61126', 'AAAGAGGTGACTC', NULL),
('BBa_J61127', 'AAAGAGTGGAACT', '0.087334'),
('BBa_J61128', 'AAAGATAGGACTC', NULL),
('BBa_J61129', 'AAAGATTGGACGT', NULL),
('BBa_J61130', 'AAAGAAACGACAT', NULL),
('BBa_J61131', 'AAAGAACCGAATT', NULL),
('BBa_J61132', 'AAAGACAGGATTA', NULL),
('BBa_J61133', 'AAAGACCCGAGAC', NULL),
('BBa_J61134', 'AAAGACCGGAAAT', NULL),
('BBa_J61135', 'AAAGACCGGAGAC', NULL),
('BBa_J61136', 'AAAGAGCTGAGCA', NULL),
('BBa_J61137', 'AAAGAGTAGATCA', NULL),
('BBa_J61138', 'AAAGATATGAATA', NULL),
('BBa_J61139', 'AAAGATTAGAGTC', NULL),
('Bba_B0032', 'TCACACAGGAAAG', '0.3');

-- --------------------------------------------------------

--
-- Structure de la table `terminator`
--

DROP TABLE IF EXISTS `terminator`;
CREATE TABLE IF NOT EXISTS `terminator` (
  `Name` varchar(250) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Sequence` text,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `terminator`
--

INSERT INTO `terminator` (`Name`, `Description`, `Sequence`) VALUES
('BBa_B0010', 'T1 from E. coli rrnB', 'CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTC'),
('BBa_B0012', 'TE from coliphageT7', 'TCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA'),
('BBa_B0015', 'double terminator (B0010-B0012)', 'CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTCTACTAGAGTCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA'),
('BBa_B0017', 'double terminator (B0010-B0010)', 'CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTCCCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTCGGTGAACGCTCTC'),
('BBa_B0055', '-- No description --', 'AAGGAATATTCAGCAATTTGCCCGTGCCGAAGAAAGGCCCACCCGTGAAGGTGAGCCAGTGAGTTGATTGCTACGTAA'),
('BBa_B1002', '(artificial, small,%T~=85%)', 'CGCAAAAAACCCCGCTTCGGCGGGGTTTTTTCGC'),
('BBa_B1003', '(artificial, small,%T~=80)', 'CGCCAAAAACCCCGCTTCGGCGGGGTTTTTCCGC'),
('BBa_B1004', '(artificial, small,%T~=55)', 'CGCCGAAAACCCCGCTTCGGCGGGGTTTTGCCGC'),
('BBa_B1005', '(artificial, small,%T~=25%', 'CGCCGCAAACCCCGCTTCGGCGGGGTTTCGCCGC'),
('BBa_B1006', '(artificial, large,%T~>90)', 'AAAAAAAAACCCCGCCCCTGACAGGGCGGGGTTTTTTTT'),
('BBa_B1010', '(artificial, large,%T~<10)', 'CGCCGCAAACCCCGCCCCTGACAGGGCGGGGTTTCGCCGC'),
('BBa_I11013', 'Modification of biobricks part BBa_B0015', 'CCAGGCATCAAATAAAACGAAAGGCTCAGTCGAAAGACTGGGCCTTTCGTTTTATCTGTTGTTTGTTTATGAACGCTCTCTACTAGAGTCACACTGGCTCACCTTCGGGTGGGCCTTTCTGCGTTTATA'),
('BBa_I51003', '-- No description --', 'TATCATGTAGCTAGCGTGCCGTAGCTAGTCGCTGACTGATGCTGACTGACTGCGACTGACTGACTGGCGCTAGCTGCATGCATGCTGACTGACTGACTGATCGGCGATCG'),
('BBa_J61048', '[rnpB-T1] Terminator', 'CCGGCTTATCGGTCAGTTTCACCTGATTTACGTAAAAACCCGCTTCGGCGGGTTTTTGCTTTTGGAGGGGCAGAAAGATGAATGACTGTCCACGACGCTATACCCAAAAGAAA'),
('BBa_K864501', 'T22, P22 late terminator', 'AAATAAAGCCCTGAGTTTAACCGCTCGGGGCTTTTTGCGTTT'),
('BBa_K864600', 'T0 (21 imm) transcriptional terminator', 'TTGTTCAGAACGCTCGGTCTTGCACACCGGGCGTTTTTTCTTTGTGAGTCCA'),
('BBa_K864601', 'Lambda t1 transcriptional terminator', 'CTGTAACAGAGCATTAGCGCAAGGTGATTTTTGTCTTCTTGCGCTAATTTTTT'),
('BBa_B0013', 'TE from coliphage T7 (+/-)', 'AAAAAATCAAACTGGCTCACCTTCGGGTGGGCCTTTTTGCGTTTATA'),
('BBa_B0053', 'Terminator (His)', 'TCCGGCAAAAAAACGGGCAAGGTGTCACCACCCTGCCCTTTTTCTTTAAAACCGAAAAGATTACTTCGCGTT');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

DROP TABLE IF EXISTS `visiteur`;
CREATE TABLE IF NOT EXISTS `visiteur` (
  `ID_client` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `num` varchar(255) COLLATE utf8_bin NOT NULL,
  `MDP` varchar(255) COLLATE utf8_bin NOT NULL,
  `ville` varchar(255) COLLATE utf8_bin NOT NULL,
  `rue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code_postal` int(5) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `situation` varchar(255) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`ID_client`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`ID_client`, `nom`, `prenom`, `email`, `num`, `MDP`, `ville`, `rue`, `code_postal`, `date_naissance`, `sexe`, `situation`) VALUES
(9, 'kobak', 'thomas', 'thomas.kobak@gmail.com', '0987655454', 'loulou', 'vitry-sur-seine', '42 rue clement perrot', 56432, '0000-12-12', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
