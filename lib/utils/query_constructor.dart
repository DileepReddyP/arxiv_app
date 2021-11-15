// ignore_for_file: constant_identifier_names

class QueryConstructor {}

class ArxivQuery {
  ArxivField field;
  String query;
  ArxivQuery({required this.field, required this.query});
}

enum ArxivField {
  title,
  author,
  abstract_,
  comment,
  journalReference,
  category,
  reportNumber,
  all
}

Map<ArxivField, String> arxivFields = {
  ArxivField.all: 'all',
  ArxivField.abstract_: 'abs',
  ArxivField.author: 'au',
  ArxivField.category: 'cat',
  ArxivField.comment: 'co',
  ArxivField.title: 'ti',
  ArxivField.reportNumber: 'rn',
  ArxivField.journalReference: 'jr',
};

Map<ArxivField, String> arxivFieldNamesForDropDown = {
  ArxivField.all: 'All',
  ArxivField.abstract_: 'Abstract',
  ArxivField.author: 'Author',
  ArxivField.category: 'Category',
  ArxivField.comment: 'Comment',
  ArxivField.title: 'Title',
  ArxivField.reportNumber: 'Report number',
  ArxivField.journalReference: 'Journal Reference',
};

Map<String, String> arxivCategories = {
  'astro-ph.GA': 'Astrophysics of Galaxies',
  'astro-ph.CO': 'Cosmology and Nongalactic Astrophysics',
  'astro-ph.EP': 'Earth and Planetary Astrophysics',
  'astro-ph.HE': 'High Energy Astrophysical Phenomena',
  'astro-ph.IM': 'Instrumentation and Methods for Astrophysics',
  'astro-ph.SR': 'Solar and Stellar Astrophysics',
  'cond-mat.dis-nn': 'Disordered Systems and Neural Networks',
  'cond-mat.mtrl-sci': 'Materials Science',
  'cond-mat.mes-hall': 'Mesoscale and Nanoscale Physics',
  'cond-mat.other': 'Other Condensed Matter',
  'cond-mat.quant-gas': 'Quantum Gases',
  'cond-mat.soft': 'Soft Condensed Matter',
  'cond-mat.stat-mech': 'Statistical Mechanics',
  'cond-mat.str-el': 'Strongly Correlated Electrons',
  'cond-mat.supr-con': 'Superconductivity',
  'gr-qc': 'General Relativity and Quantum Cosmology',
  'hep-ex': 'High Energy Physics - Experiment',
  'hep-lat': 'High Energy Physics - Lattice',
  'hep-ph': 'High Energy Physics - Phenomenology',
  'hep-th': 'High Energy Physics - Theory',
  'math-ph': 'Mathematical Physics',
  'nlin.AO': 'Adaptation and Self-Organizing Systems',
  'nlin.CG': 'Cellular Automata and Lattice Gases',
  'nlin.CD': 'Chaotic Dynamics',
  'nlin.SI': 'Exactly Solvable and Integrable Systems',
  'nlin.PS': 'Pattern Formation and Solitons',
  'nucl-ex': 'Nuclear Experiment',
  'nucl-th': 'Nuclear Theory',
  'physics.acc-ph': 'Accelerator Physics',
  'physics.app-ph': 'Applied Physics',
  'physics.ao-ph': 'Atmospheric and Oceanic Physics',
  'physics.atom-ph': 'Atomic Physics',
  'physics.atm-clus': 'Atomic and Molecular Clusters',
  'physics.bio-ph': 'Biological Physics',
  'physics.chem-ph': 'Chemical Physics',
  'physics.class-ph': 'Classical Physics',
  'physics.comp-ph': 'Computational Physics',
  'physics.data-an': 'Data Analysis, Statistics and Probability',
  'physics.flu-dyn': 'Fluid Dynamics',
  'physics.gen-ph': 'General Physics',
  'physics.geo-ph': 'Geophysics',
  'physics.hist-ph': 'History and Philosophy of Physics',
  'physics.ins-det': 'Instrumentation and Detectors',
  'physics.med-ph': 'Medical Physics',
  'physics.optics': 'Optics',
  'physics.ed-ph': 'Physics Education',
  'physics.soc-ph': 'Physics and Society',
  'physics.plasm-ph': 'Plasma Physics',
  'physics.pop-ph': 'Popular Physics',
  'physics.space-ph': 'Space Physics',
  'quant-ph': 'Quantum Physics',
  'math.AG': 'Algebraic Geometry',
  'math.AT': 'Algebraic Topology',
  'math.AP': 'Analysis of PDEs',
  'math.CT': 'Category Theory',
  'math.CA': 'Classical Analysis and ODEs',
  'math.CO': 'Combinatorics',
  'math.AC': 'Commutative Algebra',
  'math.CV': 'Complex Variables',
  'math.DG': 'Differential Geometry',
  'math.DS': 'Dynamical Systems',
  'math.FA': 'Functional Analysis',
  'math.GM': 'General Mathematics',
  'math.GN': 'General Topology',
  'math.GT': 'Geometric Topology',
  'math.GR': 'Group Theory',
  'math.HO': 'History and Overview',
  'math.IT': 'Information Theory',
  'math.KT': 'K-Theory and Homology',
  'math.LO': 'Logic',
  'math.MP': 'Mathematical Physics',
  'math.MG': 'Metric Geometry',
  'math.NT': 'Number Theory',
  'math.NA': 'Numerical Analysis',
  'math.OA': 'Operator Algebras',
  'math.OC': 'Optimization and Control',
  'math.PR': 'Probability',
  'math.QA': 'Quantum Algebra',
  'math.RT': 'Representation Theory',
  'math.RA': 'Rings and Algebras',
  'math.SP': 'Spectral Theory',
  'math.ST': 'Statistics Theory',
  'math.SG': 'Symplectic Geometry',
  'cs.AI': 'Artificial Intelligence',
  'cs.CL': 'Computation and Language',
  'cs.CC': 'Computational Complexity',
  'cs.CE': 'Computational Engineering, Finance, and Science',
  'cs.CG': 'Computational Geometry',
  'cs.GT': 'Computer Science and Game Theory',
  'cs.CV': 'Computer Vision and Pattern Recognition',
  'cs.CY': 'Computers and Society',
  'cs.CR': 'Cryptography and Security',
  'cs.DS': 'Data Structures and Algorithms',
  'cs.DB': 'Databases',
  'cs.DL': 'Digital Libraries',
  'cs.DM': 'Discrete Mathematics',
  'cs.DC': 'Distributed, Parallel, and Cluster Computing',
  'cs.ET': 'Emerging Technologies',
  'cs.FL': 'Formal Languages and Automata Theory',
  'cs.GL': 'General Literature',
  'cs.GR': 'Graphics',
  'cs.AR': 'Hardware Architecture',
  'cs.HC': 'Human-Computer Interaction',
  'cs.IR': 'Information Retrieval',
  'cs.IT': 'Information Theory',
  'cs.LG': 'Learning',
  'cs.LO': 'Logic in Computer Science',
  'cs.MS': 'Mathematical Software',
  'cs.MA': 'Multiagent Systems',
  'cs.MM': 'Multimedia',
  'cs.NI': 'Networking and Internet Architecture',
  'cs.NE': 'Neural and Evolutionary Computing',
  'cs.NA': 'Numerical Analysis',
  'cs.OS': 'Operating Systems',
  'cs.OH': 'Other Computer Science',
  'cs.PF': 'Performance',
  'cs.PL': 'Programming Languages',
  'cs.RO': 'Robotics',
  'cs.SI': 'Social and Information Networks',
  'cs.SE': 'Software Engineering',
  'cs.SD': 'Sound',
  'cs.SC': 'Symbolic Computation',
  'cs.SY': 'Systems and Control',
  'q-bio.BM': 'Biomolecules',
  'q-bio.GN': 'Genomics',
  'q-bio.MN': 'Molecular Networks',
  'q-bio.SC': 'Subcellular Processes',
  'q-bio.CB': 'Cell Behavior',
  'q-bio.NC': 'Neurons and Cognition',
  'q-bio.TO': 'Tissues and Organs',
  'q-bio.PE': 'Populations and Evolution',
  'q-bio.QM': 'Quantitative Methods',
  'q-bio.OT': 'Quant. Bio: Other',
  'q-fin.PR': 'Pricing of Securities',
  'q-fin.RM': 'Risk Management',
  'q-fin.PM': 'Portfolio Management',
  'q-fin.TR': 'Trading and Microstructure',
  'q-fin.MF': 'Mathematical Finance',
  'q-fin.CP': 'Computational Finance',
  'q-fin.ST': 'Statistical Finance',
  'q-fin.GN': 'General Finance',
  'q-fin.EC': 'Economics',
  'stat.AP': 'Statistics: Applications',
  'stat.CO': 'Statistics: Computation',
  'stat.ML': 'Statistics: Machine Learning',
  'stat.ME': 'Statistics: Methodology',
  'stat.OT': 'Other Statistics',
  'stat.TH': 'Statistics: Theory',
};

enum ArxivCategory {
  csAI,
//    (Artificial Intelligence)
// Covers all areas of AI except Vision, Robotics, Machine Learning, Multiagent Systems, and Computation and Language (Natural Language Processing), which have separate subject areas. In particular, includes Expert Systems, Theorem Proving (although this may overlap with Logic in Computer Science), Knowledge Representation, Planning, and Uncertainty in AI. Roughly includes material in ACM Subject Classes I.2.0, I.2.1, I.2.3, I.2.4, I.2.8, and I.2.11.

  csAR,
//(Hardware Architecture)
// Covers systems organization and hardware architecture. Roughly includes material in ACM Subject Classes C.0, C.1, and C.5.

  csCC,
//(Computational Complexity)
// Covers models of computation, complexity classes, structural complexity, complexity tradeoffs, upper and lower bounds. Roughly includes material in ACM Subject Classes F.1 (computation by abstract devices), F.2.3 (tradeoffs among complexity measures), and F.4.3 (formal languages), although some material in formal languages may be more appropriate for Logic in Computer Science. Some material in F.2.1 and F.2.2, may also be appropriate here, but is more likely to have Data Structures and Algorithms as the primary subject area.

  csCE,
//  (Computational Engineering, Finance, and Science)
// Covers applications of computer science to the mathematical modeling of complex systems in the fields of science, engineering, and finance. Papers here are interdisciplinary and applications-oriented, focusing on techniques and tools that enable challenging computational simulations to be performed, for which the use of supercomputers or distributed computing platforms is often required. Includes material in ACM Subject Classes J.2, J.3, and J.4 (economics).

  csCG,
// (Computational Geometry)
// Roughly includes material in ACM Subject Classes I.3.5 and F.2.2.

  csCL,
// (Computation and Language)
// Covers natural language processing. Roughly includes material in ACM Subject Class I.2.7. Note that work on artificial languages (programming languages, logics, formal systems) that does not explicitly address natural-language issues broadly construed (natural-language processing, computational linguistics, speech, text retrieval, etc.) is not appropriate for this area.

  csCR,
// (Cryptography and Security)
// Covers all areas of cryptography and security including authentication, public key cryptosytems, proof-carrying code, etc. Roughly includes material in ACM Subject Classes D.4.6 and E.3.

  csCV,
// (Computer Vision and Pattern Recognition)
// Covers image processing, computer vision, pattern recognition, and scene understanding. Roughly includes material in ACM Subject Classes I.2.10, I.4, and I.5.

  csCY,
//  (Computers and Society)
// Covers impact of computers on society, computer ethics, information technology and public policy, legal aspects of computing, computers and education. Roughly includes material in ACM Subject Classes K.0, K.2, K.3, K.4, K.5, and K.7.

  csDB,
// (Databases)
// Covers database management, datamining, and data processing. Roughly includes material in ACM Subject Classes E.2, E.5, H.0, H.2, and J.1.

  csDC,
//   (Distributed, Parallel, and Cluster Computing)
// Covers fault-tolerance, distributed algorithms, stabilility, parallel computation, and cluster computing. Roughly includes material in ACM Subject Classes C.1.2, C.1.4, C.2.4, D.1.3, D.4.5, D.4.7, E.1.

  csDL,
//   (Digital Libraries)
// Covers all aspects of the digital library design and document and text creation. Note that there will be some overlap with Information Retrieval (which is a separate subject area). Roughly includes material in ACM Subject Classes H.3.5, H.3.6, H.3.7, I.7.

  csDM,
//  (Discrete Mathematics)
// Covers combinatorics, graph theory, applications of probability. Roughly includes material in ACM Subject Classes G.2 and G.3.

  csDS,
//  (Data Structures and Algorithms)
// Covers data structures and analysis of algorithms. Roughly includes material in ACM Subject Classes E.1, E.2, F.2.1, and F.2.2.

  csET,
//  (Emerging Technologies)
// Covers approaches to information processing (computing, communication, sensing) and bio-chemical analysis based on alternatives to silicon CMOS-based technologies, such as nanoscale electronic, photonic, spin-based, superconducting, mechanical, bio-chemical and quantum technologies (this list is not exclusive). Topics of interest include (1) building blocks for emerging technologies, their scalability and adoption in larger systems, including integration with traditional technologies, (2) modeling, design and optimization of novel devices and systems, (3) models of computation, algorithm design and programming for emerging technologies.

  csFL,
//  (Formal Languages and Automata Theory)
// Covers automata theory, formal language theory, grammars, and combinatorics on words. This roughly corresponds to ACM Subject Classes F.1.1, and F.4.3. Papers dealing with computational complexity should go to cs.CC; papers dealing with logic should go to cs.LO.

  csGL,
//  (General Literature)
// Covers introductory material, survey material, predictions of future trends, biographies, and miscellaneous computer-science related material. Roughly includes all of ACM Subject Class A, except it does not include conference proceedings (which will be listed in the appropriate subject area).

  csGR,
//  (Graphics)
// Covers all aspects of computer graphics. Roughly includes material in all of ACM Subject Class I.3, except that I.3.5 is is likely to have Computational Geometry as the primary subject area.

  csGT,
//  (Computer Science and Game Theory)
// Covers all theoretical and applied aspects at the intersection of computer science and game theory, including work in mechanism design, learning in games (which may overlap with Learning), foundations of agent modeling in games (which may overlap with Multiagent systems), coordination, specification and formal methods for non-cooperative computational environments. The area also deals with applications of game theory to areas such as electronic commerce.

  csHC,
//  (Human-Computer Interaction)
// Covers human factors, user interfaces, and collaborative computing. Roughly includes material in ACM Subject Classes H.1.2 and all of H.5, except for H.5.1, which is more likely to have Multimedia as the primary subject area.

  csIR,
//  (Information Retrieval)
// Covers indexing, dictionaries, retrieval, content and analysis. Roughly includes material in ACM Subject Classes H.3.0, H.3.1, H.3.2, H.3.3, and H.3.4.

  csIT,
//  (Information Theory)
// Covers theoretical and experimental aspects of information theory and coding. Includes material in ACM Subject Class E.4 and intersects with H.1.1.

  csLG,
//  (Machine Learning)
// Papers on all aspects of machine learning research (supervised, unsupervised, reinforcement learning, bandit problems, and so on) including also robustness, explanation, fairness, and methodology. cs.LG is also an appropriate primary category for applications of machine learning methods.

  csLO,
//  (Logic in Computer Science)
// Covers all aspects of logic in computer science, including finite model theory, logics of programs, modal logic, and program verification. Programming language semantics should have Programming Languages as the primary subject area. Roughly includes material in ACM Subject Classes D.2.4, F.3.1, F.4.0, F.4.1, and F.4.2; some material in F.4.3 (formal languages) may also be appropriate here, although Computational Complexity is typically the more appropriate subject area.

  csMA,
//  (Multiagent Systems)
// Covers multiagent systems, distributed artificial intelligence, intelligent agents, coordinated interactions. and practical applications. Roughly covers ACM Subject Class I.2.11.

  csMM,
//  (Multimedia)
// Roughly includes material in ACM Subject Class H.5.1.

  csMS,
//  (Mathematical Software)
// Roughly includes material in ACM Subject Class G.4.

  csNA,
//  (Numerical Analysis)
// cs.NA is an alias for math.NA. Roughly includes material in ACM Subject Class G.1.

  csNE,
//  (Neural and Evolutionary Computing)
// Covers neural networks, connectionism, genetic algorithms, artificial life, adaptive behavior. Roughly includes some material in ACM Subject Class C.1.3, I.2.6, I.5.

  csNI,
//  (Networking and Internet Architecture)
// Covers all aspects of computer communication networks, including network architecture and design, network protocols, and internetwork standards (like TCP/IP). Also includes topics, such as web caching, that are directly relevant to Internet architecture and performance. Roughly includes all of ACM Subject Class C.2 except C.2.4, which is more likely to have Distributed, Parallel, and Cluster Computing as the primary subject area.

  csOH,
//  (Other Computer Science)
// This is the classification to use for documents that do not fit anywhere else.

  csOS,
//  (Operating Systems)
// Roughly includes material in ACM Subject Classes D.4.1, D.4.2., D.4.3, D.4.4, D.4.5, D.4.7, and D.4.9.

  csPF,
//  (Performance)
// Covers performance measurement and evaluation, queueing, and simulation. Roughly includes material in ACM Subject Classes D.4.8 and K.6.2.

  csPL,
//  (Programming Languages)
// Covers programming language semantics, language features, programming approaches (such as object-oriented programming, functional programming, logic programming). Also includes material on compilers oriented towards programming languages; other material on compilers may be more appropriate in Architecture (AR). Roughly includes material in ACM Subject Classes D.1 and D.3.

  csRO,
//  (Robotics)
// Roughly includes material in ACM Subject Class I.2.9.

  csSC,
//  (Symbolic Computation)
// Roughly includes material in ACM Subject Class I.1.

  csSD,
//  (Sound)
// Covers all aspects of computing with sound, and sound as an information channel. Includes models of sound, analysis and synthesis, audio user interfaces, sonification of data, computer music, and sound signal processing. Includes ACM Subject Class H.5.5, and intersects with H.1.2, H.5.1, H.5.2, I.2.7, I.5.4, I.6.3, J.5, K.4.2.

  csSE,
//  (Software Engineering)
// Covers design tools, software metrics, testing and debugging, programming environments, etc. Roughly includes material in all of ACM Subject Classes D.2, except that D.2.4 (program verification) should probably have Logics in Computer Science as the primary subject area.

  csSI,
//  (Social and Information Networks)
// Covers the design, analysis, and modeling of social and information networks, including their applications for on-line information access, communication, and interaction, and their roles as datasets in the exploration of questions in these and other domains, including connections to the social and biological sciences. Analysis and modeling of such networks includes topics in ACM Subject classes F.2, G.2, G.3, H.2, and I.2; applications in computing include topics in H.3, H.4, and H.5; and applications at the interface of computing and other disciplines include topics in J.1--J.7. Papers on computer communication systems and network protocols (e.g. TCP/IP) are generally a closer fit to the Networking and Internet Architecture (cs.NI) category.

  csSY,
//  (Systems and Control)
// cs.SY is an alias for eess.SY. This section includes theoretical and experimental research covering all facets of automatic control systems. The section is focused on methods of control system analysis and design using tools of modeling, simulation and optimization. Specific areas of research include nonlinear, distributed, adaptive, stochastic and robust control in addition to hybrid and discrete event systems. Application areas include automotive and aerospace control systems, network control, biological systems, multiagent and cooperative control, robotics, reinforcement learning, sensor networks, control of cyber-physical and energy-related systems, and control of computing systems.

// Economics
  econEM,
//  (Econometrics)
// Econometric Theory, Micro-Econometrics, Macro-Econometrics, Empirical Content of Economic Relations discovered via New Methods, Methodological Aspects of the Application of Statistical Inference to Economic Data.

  econGN,
//  (General Economics)
// General methodological, applied, and empirical contributions to economics.

  econTH,
//  (Theoretical Economics)
// Includes theoretical contributions to Contract Theory, Decision Theory, Game Theory, General Equilibrium, Growth, Learning and Evolution, Macroeconomics, Market and Mechanism Design, and Social Choice.

// Electrical Engineering and Systems Science
  eessAS,
//  (Audio and Speech Processing)
// Theory and methods for processing signals representing audio, speech, and language, and their applications. This includes analysis, synthesis, enhancement, transformation, classification and interpretation of such signals as well as the design, development, and evaluation of associated signal processing systems. Machine learning and pattern analysis applied to any of the above areas is also welcome. Specific topics of interest include: auditory modeling and hearing aids; acoustic beamforming and source localization; classification of acoustic scenes; speaker separation; active noise control and echo cancellation; enhancement; de-reverberation; bioacoustics; music signals analysis, synthesis and modification; music information retrieval; audio for multimedia and joint audio-video processing; spoken and written language modeling, segmentation, tagging, parsing, understanding, and translation; text mining; speech production, perception, and psychoacoustics; speech analysis, synthesis, and perceptual modeling and coding; robust speech recognition; speaker recognition and characterization; deep learning, online learning, and graphical models applied to speech, audio, and language signals; and implementation aspects ranging from system architecture to fast algorithms.

  eessIV,
//  (Image and Video Processing)
// Theory, algorithms, and architectures for the formation, capture, processing, communication, analysis, and display of images, video, and multidimensional signals in a wide variety of applications. Topics of interest include: mathematical, statistical, and perceptual image and video modeling and representation; linear and nonlinear filtering, de-blurring, enhancement, restoration, and reconstruction from degraded, low-resolution or tomographic data; lossless and lossy compression and coding; segmentation, alignment, and recognition; image rendering, visualization, and printing; computational imaging, including ultrasound, tomographic and magnetic resonance imaging; and image and video analysis, synthesis, storage, search and retrieval.

  eessSP,
//  (Signal Processing)
// Theory, algorithms, performance analysis and applications of signal and data analysis, including physical modeling, processing, detection and parameter estimation, learning, mining, retrieval, and information extraction. The term "signal" includes speech, audio, sonar, radar, geophysical, physiological, (bio-) medical, image, video, and multimodal natural and man-made signals, including communication signals and data. Topics of interest include: statistical signal processing, spectral estimation and system identification; filter design, adaptive filtering / stochastic learning; (compressive) sampling, sensing, and transform-domain methods including fast algorithms; signal processing for machine learning and machine learning for signal processing applications; in-network and graph signal processing; convex and nonconvex optimization methods for signal processing applications; radar, sonar, and sensor array beamforming and direction finding; communications signal processing; low power, multi-core and system-on-chip signal processing; sensing, communication, analysis and optimization for cyber-physical systems such as power grids and the Internet of Things.

  eessSY,
//  (Systems and Control)
// This section includes theoretical and experimental research covering all facets of automatic control systems. The section is focused on methods of control system analysis and design using tools of modeling, simulation and optimization. Specific areas of research include nonlinear, distributed, adaptive, stochastic and robust control in addition to hybrid and discrete event systems. Application areas include automotive and aerospace control systems, network control, biological systems, multiagent and cooperative control, robotics, reinforcement learning, sensor networks, control of cyber-physical and energy-related systems, and control of computing systems.

// Mathematics
  mathAC,
//  (Commutative Algebra)
// Commutative rings, modules, ideals, homological algebra, computational aspects, invariant theory, connections to algebraic geometry and combinatorics

  mathAG,
//  (Algebraic Geometry)
// Algebraic varieties, stacks, sheaves, schemes, moduli spaces, complex geometry, quantum cohomology

  mathAP,
//  (Analysis of PDEs)
// Existence and uniqueness, boundary conditions, linear and non-linear operators, stability, soliton theory, integrable PDE's, conservation laws, qualitative dynamics

  mathAT,
//  (Algebraic Topology)
// Homotopy theory, homological algebra, algebraic treatments of manifolds

  mathCA,
// (Classical Analysis and ODEs)
// Special functions, orthogonal polynomials, harmonic analysis, ODE's, differential relations, calculus of variations, approximations, expansions, asymptotics

  mathCO,
//  (Combinatorics)
// Discrete mathematics, graph theory, enumeration, combinatorial optimization, Ramsey theory, combinatorial game theory

  mathCT,
//  (Category Theory)
// Enriched categories, topoi, abelian categories, monoidal categories, homological algebra

  mathCV,
//  (Complex Variables)
// Holomorphic functions, automorphic group actions and forms, pseudoconvexity, complex geometry, analytic spaces, analytic sheaves

  mathDG,
//  (Differential Geometry)
// Complex, contact, Riemannian, pseudo-Riemannian and Finsler geometry, relativity, gauge theory, global analysis

  mathDS,
//  (Dynamical Systems)
// Dynamics of differential equations and flows, mechanics, classical few-body problems, iterations, complex dynamics, delayed differential equations

  mathFA,
//  (Functional Analysis)
// Banach spaces, function spaces, real functions, integral transforms, theory of distributions, measure theory

  mathGM,
//  (General Mathematics)
// Mathematical material of general interest, topics not covered elsewhere

  mathGN,
//  (General Topology)
// Continuum theory, point-set topology, spaces with algebraic structure, foundations, dimension theory, local and global properties

  mathGR,
//  (Group Theory)
// Finite groups, topological groups, representation theory, cohomology, classification and structure

  mathGT,
//  (Geometric Topology)
// Manifolds, orbifolds, polyhedra, cell complexes, foliations, geometric structures

  mathHO,
//  (History and Overview)
// Biographies, philosophy of mathematics, mathematics education, recreational mathematics, communication of mathematics, ethics in mathematics

  mathIT,
//  (Information Theory)
// math.IT is an alias for cs.IT. Covers theoretical and experimental aspects of information theory and coding.

  mathKT,
//  (K-Theory and Homology)
// Algebraic and topological K-theory, relations with topology, commutative algebra, and operator algebras

  mathLO,
//  (Logic)
// Logic, set theory, point-set topology, formal mathematics

  mathMG,
//  (Metric Geometry)
// Euclidean, hyperbolic, discrete, convex, coarse geometry, comparisons in Riemannian geometry, symmetric spaces

  mathMP,
//  (Mathematical Physics)
// math.MP is an alias for math-ph. Articles in this category focus on areas of research that illustrate the application of mathematics to problems in physics, develop mathematical methods for such applications, or provide mathematically rigorous formulations of existing physical theories. Submissions to math-ph should be of interest to both physically oriented mathematicians and mathematically oriented physicists; submissions which are primarily of interest to theoretical physicists or to mathematicians should probably be directed to the respective physics/math categories

  mathNA,
//  (Numerical Analysis)
// Numerical algorithms for problems in analysis and algebra, scientific computation

  mathNT,
//  (Number Theory)
// Prime numbers, diophantine equations, analytic number theory, algebraic number theory, arithmetic geometry, Galois theory

  mathOA,
//  (Operator Algebras)
// Algebras of operators on Hilbert space, C^*-algebras, von Neumann algebras, non-commutative geometry

  mathOC,
//  (Optimization and Control)
// Operations research, linear programming, control theory, systems theory, optimal control, game theory

  mathPR,
//  (Probability)
// Theory and applications of probability and stochastic processes: e.g. central limit theorems, large deviations, stochastic differential equations, models from statistical mechanics, queuing theory

  mathQA,
//  (Quantum Algebra)
// Quantum groups, skein theories, operadic and diagrammatic algebra, quantum field theory

  mathRA,
//  (Rings and Algebras)
// Non-commutative rings and algebras, non-associative algebras, universal algebra and lattice theory, linear algebra, semigroups

  mathRT,
//  (Representation Theory)
// Linear representations of algebras and groups, Lie theory, associative algebras, multilinear algebra

  mathSG,
//  (Symplectic Geometry)
// Hamiltonian systems, symplectic flows, classical integrable systems

  mathSP,
//  (Spectral Theory)
// Schrodinger operators, operators on manifolds, general differential operators, numerical studies, integral operators, discrete models, resonances, non-self-adjoint operators, random operators/matrices

  mathST,
//  (Statistics Theory)
// Applied, computational and theoretical statistics: e.g. statistical inference, regression, time series, multivariate analysis, data analysis, Markov chain Monte Carlo, design of experiments, case studies

// Physics
// ASTROPHYSICS
// (ASTRO-PH)
  astro_phCO,
//  (Cosmology and Nongalactic Astrophysics)
// Phenomenology of early universe, cosmic microwave background, cosmological parameters, primordial element abundances, extragalactic distance scale, large-scale structure of the universe. Groups, superclusters, voids, intergalactic medium. Particle astrophysics: dark energy, dark matter, baryogenesis, leptogenesis, inflationary models, reheating, monopoles, WIMPs, cosmic strings, primordial black holes, cosmological gravitational radiation

  astro_phEP,
//  (Earth and Planetary Astrophysics)
// Interplanetary medium, planetary physics, planetary astrobiology, extrasolar planets, comets, asteroids, meteorites. Structure and formation of the solar system

  astro_phGA,
//  (Astrophysics of Galaxies)
// Phenomena pertaining to galaxies or the Milky Way. Star clusters, HII regions and planetary nebulae, the interstellar medium, atomic and molecular clouds, dust. Stellar populations. Galactic structure, formation, dynamics. Galactic nuclei, bulges, disks, halo. Active Galactic Nuclei, supermassive black holes, quasars. Gravitational lens systems. The Milky Way and its contents

  astro_phHE,
//  (High Energy Astrophysical Phenomena)
// Cosmic ray production, acceleration, propagation, detection. Gamma ray astronomy and bursts, X-rays, charged particles, supernovae and other explosive phenomena, stellar remnants and accretion systems, jets, microquasars, neutron stars, pulsars, black holes

  astro_phIM,
//  (Instrumentation and Methods for Astrophysics)
// Detector and telescope design, experiment proposals. Laboratory Astrophysics. Methods for data analysis, statistical methods. Software, database design

  astro_phSR,
//  (Solar and Stellar Astrophysics)
// White dwarfs, brown dwarfs, cataclysmic variables. Star formation and protostellar systems, stellar astrobiology, binary and multiple systems of stars, stellar evolution and structure, coronas. Central stars of planetary nebulae. Helioseismology, solar neutrinos, production and detection of gravitational radiation from stellar systems

// CONDENSED MATTER
// (COND-MAT)
  cond_matMis_nn,
//  (Disordered Systems and Neural Networks)
// Glasses and spin glasses; properties of random, aperiodic and quasiperiodic systems; transport in disordered media; localization; phenomena mediated by defects and disorder; neural networks

  cond_matMes_hall,
//  (Mesoscale and Nanoscale Physics)
// Semiconducting nanostructures: quantum dots, wires, and wells. Single electronics, spintronics, 2d electron gases, quantum Hall effect, nanotubes, graphene, plasmonic nanostructures

  cond_matMtrl_sci,
//  (Materials Science)
// Techniques, synthesis, characterization, structure. Structural phase transitions, mechanical properties, phonons. Defects, adsorbates, interfaces

  cond_matOther,
//  (Other Condensed Matter)
// Work in condensed matter that does not fit into the other cond-mat classifications

  cond_maQuant_gas,
//  (Quantum Gases)
// Ultracold atomic and molecular gases, Bose-Einstein condensation, Feshbach resonances, spinor condensates, optical lattices, quantum simulation with cold atoms and molecules, macroscopic interference phenomena

  cond_matSoft,
//  (Soft Condensed Matter)
// Membranes, polymers, liquid crystals, glasses, colloids, granular matter

  cond_matStat_mech,
//  (Statistical Mechanics)
// Phase transitions, thermodynamics, field theory, non-equilibrium phenomena, renormalization group and scaling, integrable models, turbulence

  cond_matStr_el,
//  (Strongly Correlated Electrons)
// Quantum magnetism, non-Fermi liquids, spin liquids, quantum criticality, charge density waves, metal-insulator transitions

  cond_matSupr_con,
//  (Superconductivity)
// Superconductivity: theory, models, experiment. Superflow in helium

// GENERAL RELATIVITY AND QUANTUM COSMOLOGY
// (GR-QC)
  gr_qc,
// (General Relativity and Quantum Cosmology)
// General Relativity and Quantum Cosmology Areas of gravitational physics, including experiments and observations related to the detection and interpretation of gravitational waves, experimental tests of gravitational theories, computational general relativity, relativistic astrophysics, solutions to Einstein's equations and their properties, alternative theories of gravity, classical and quantum cosmology, and quantum gravity.

// HIGH ENERGY PHYSICS - EXPERIMENT
// (HEP-EX)
  hep_ex,
//  (High Energy Physics - Experiment)
// Description coming soon

// HIGH ENERGY PHYSICS - LATTICE
// (HEP-LAT)
  hep_lat,
//  (High Energy Physics - Lattice)
// Lattice field theory. Phenomenology from lattice field theory. Algorithms for lattice field theory. Hardware for lattice field theory.

// HIGH ENERGY PHYSICS - PHENOMENOLOGY
// (HEP-PH)
  hep_ph,
//  (High Energy Physics - Phenomenology)
// Theoretical particle physics and its interrelation with experiment. Prediction of particle physics observables: models, effective field theories, calculation techniques. Particle physics: analysis of theory through experimental results.

// HIGH ENERGY PHYSICS - THEORY
// (HEP-TH)
  hep_th,
//  (High Energy Physics - Theory)
// Formal aspects of quantum field theory. String theory, supersymmetry and supergravity.

// MATHEMATICAL PHYSICS
// (MATH-PH)
  math_ph,
//  (Mathematical Physics)
// Articles in this category focus on areas of research that illustrate the application of mathematics to problems in physics, develop mathematical methods for such applications, or provide mathematically rigorous formulations of existing physical theories. Submissions to math-ph should be of interest to both physically oriented mathematicians and mathematically oriented physicists; submissions which are primarily of interest to theoretical physicists or to mathematicians should probably be directed to the respective physics/math categories

// NONLINEAR SCIENCES
// (NLIN)
  nlinAO,
//  (Adaptation and Self-Organizing Systems)
// adaptation, self-organizing systems, statistical physics, fluctuating systems, stochastic processes, interacting particle systems, machine learning

  nlinCD,
//  (Chaotic Dynamics)
// dynamical systems, chaos, quantum chaos, topological dynamics, cycle expansions, turbulence, propagation

  nlinCG,
//  (Cellular Automata and Lattice Gases)
// computational methods, time series analysis, signal processing, wavelets, lattice gases

  nlinPS,
//  (Pattern Formation and Solitons)
// pattern formation, coherent structures, solitons

  nlinSI,
//  (Exactly Solvable and Integrable Systems)
// exactly solvable systems, integrable PDEs, integrable ODEs, Painleve analysis, integrable discrete maps, solvable lattice models, integrable quantum systems

// NUCLEAR EXPERIMENT
// (NUCL-EX)
  nucl_ex,
//  (Nuclear Experiment)
// Description coming soon

// NUCLEAR THEORY
// (NUCL-TH)
  nucl_th,
//  (Nuclear Theory)
// Description coming soon

// PHYSICS
// (PHYSICS)
  physicsAcc_ph,
//  (Accelerator Physics)
// Accelerator theory and simulation. Accelerator technology. Accelerator experiments. Beam Physics. Accelerator design and optimization. Advanced accelerator concepts. Radiation sources including synchrotron light sources and free electron lasers. Applications of accelerators.

  physicsAo_ph,
//  (Atmospheric and Oceanic Physics)
// Atmospheric and oceanic physics and physical chemistry, biogeophysics, and climate science

  physicsApp_ph,
//  (Applied Physics)
// Applications of physics to new technology, including electronic devices, optics, photonics, microwaves, spintronics, advanced materials, metamaterials, nanotechnology, and energy sciences.

  physicsAtm_clus,
//  (Atomic and Molecular Clusters)
// Atomic and molecular clusters, nanoparticles: geometric, electronic, optical, chemical, magnetic properties, shell structure, phase transitions, optical spectroscopy, mass spectrometry, photoelectron spectroscopy, ionization potential, electron affinity, interaction with intense light pulses, electron diffraction, light scattering, ab initio calculations, DFT theory, fragmentation, Coulomb explosion, hydrodynamic expansion.

  physicsAtom_ph,
//  (Atomic Physics)
// Atomic and molecular structure, spectra, collisions, and data. Atoms and molecules in external fields. Molecular dynamics and coherent and optical control. Cold atoms and molecules. Cold collisions. Optical lattices.

  physicsBio_ph,
//  (Biological Physics)
// Molecular biophysics, cellular biophysics, neurological biophysics, membrane biophysics, single-molecule biophysics, ecological biophysics, quantum phenomena in biological systems (quantum biophysics), theoretical biophysics, molecular dynamics/modeling and simulation, game theory, biomechanics, bioinformatics, microorganisms, virology, evolution, biophysical methods.

  physicsChem_ph,
//  (Chemical Physics)
// Experimental, computational, and theoretical physics of atoms, molecules, and clusters - Classical and quantum description of states, processes, and dynamics; spectroscopy, electronic structure, conformations, reactions, interactions, and phases. Chemical thermodynamics. Disperse systems. High pressure chemistry. Solid state chemistry. Surface and interface chemistry.

  physicsClass_ph,
//  (Classical Physics)
// Newtonian and relativistic dynamics; many particle systems; planetary motions; chaos in classical dynamics. Maxwell's equations and dynamics of charged systems and electromagnetic forces in materials. Vibrating systems such as membranes and cantilevers; optomechanics. Classical waves, including acoustics and elasticity; physics of music and musical instruments. Classical thermodynamics and heat flow problems.

  physicsComp_ph,
//  (Computational Physics)
// All aspects of computational science applied to physics.

  physicsData_an,
//  (Data Analysis, Statistics and Probability)
// Methods, software and hardware for physics data analysis: data processing and storage; measurement methodology; statistical and mathematical aspects such as parametrization and uncertainties.

  physicsEd_ph,
//  (Physics Education)
// Report of results of a research study, laboratory experience, assessment or classroom practice that represents a way to improve teaching and learning in physics. Also, report on misconceptions of students, textbook errors, and other similar information relative to promoting physics understanding.

  physicsFlu_dyn,
//  (Fluid Dynamics)
// Turbulence, instabilities, incompressible/compressible flows, reacting flows. Aero/hydrodynamics, fluid-structure interactions, acoustics. Biological fluid dynamics, micro/nanofluidics, interfacial phenomena. Complex fluids, suspensions and granular flows, porous media flows. Geophysical flows, thermoconvective and stratified flows. Mathematical and computational methods for fluid dynamics, fluid flow models, experimental techniques.

  physicsGen_ph,
//  (General Physics)
// Description coming soon

  physicsGeo_ph,
//  (Geophysics)
// Atmospheric physics. Biogeosciences. Computational geophysics. Geographic location. Geoinformatics. Geophysical techniques. Hydrospheric geophysics. Magnetospheric physics. Mathematical geophysics. Planetology. Solar system. Solid earth geophysics. Space plasma physics. Mineral physics. High pressure physics.

  physicsHist_ph,
//  (History and Philosophy of Physics)
// History and philosophy of all branches of physics, astrophysics, and cosmology, including appreciations of physicists.

  physicsIns_de,
//  (Instrumentation and Detectors)
// Instrumentation and Detectors for research in natural science, including optical, molecular, atomic, nuclear and particle physics instrumentation and the associated electronics, services, infrastructure and control equipment.

  physicsMed_ph,
//  (Medical Physics)
// Radiation therapy. Radiation dosimetry. Biomedical imaging modelling. Reconstruction, processing, and analysis. Biomedical system modelling and analysis. Health physics. New imaging or therapy modalities.

  physicsOptics,
//  (Optics)
// Adaptive optics. Astronomical optics. Atmospheric optics. Biomedical optics. Cardinal points. Collimation. Doppler effect. Fiber optics. Fourier optics. Geometrical optics (Gradient index optics. Holography. Infrared optics. Integrated optics. Laser applications. Laser optical systems. Lasers. Light amplification. Light diffraction. Luminescence. Microoptics. Nano optics. Ocean optics. Optical computing. Optical devices. Optical imaging. Optical materials. Optical metrology. Optical microscopy. Optical properties. Optical signal processing. Optical testing techniques. Optical wave propagation. Paraxial optics. Photoabsorption. Photoexcitations. Physical optics. Physiological optics. Quantum optics. Segmented optics. Spectra. Statistical optics. Surface optics. Ultrafast optics. Wave optics. X-ray optics.

  physicsPlasm_ph,
//  (Plasma Physics)
// Fundamental plasma physics. Magnetically Confined Plasmas (includes magnetic fusion energy research). High Energy Density Plasmas (inertial confinement plasmas, laser-plasma interactions). Ionospheric, Heliophysical, and Astrophysical plasmas (includes sun and solar system plasmas). Lasers, Accelerators, and Radiation Generation. Low temperature plasmas and plasma applications (include dusty plasmas, semiconductor etching, plasma-based nanotechnology, medical applications). Plasma Diagnostics, Engineering and Enabling Technologies (includes fusion reactor design, heating systems, diagnostics, experimental techniques)

  physicsPop_ph,
//  (Popular Physics)
// Description coming soon

  physicsSoc_ph,
//  (Physics and Society)
// Structure, dynamics and collective behavior of societies and groups (human or otherwise). Quantitative analysis of social networks and other complex networks. Physics and engineering of infrastructure and systems of broad societal impact (e.g., energy grids, transportation networks).

  physicsSpace_ph,
//  (Space Physics)
// Space plasma physics. Heliophysics. Space weather. Planetary magnetospheres, ionospheres and magnetotail. Auroras. Interplanetary space. Cosmic rays. Synchrotron radiation. Radio astronomy.

// QUANTUM PHYSICS
// (QUANT-PH)
  quant_ph,
//  (Quantum Physics)
// Description coming soon

// Quantitative Biology
  q_bioBM,
//  (Biomolecules)
// DNA, RNA, proteins, lipids, etc.; molecular structures and folding kinetics; molecular interactions; single-molecule manipulation.

  q_bioCB,
//  (Cell Behavior)
// Cell-cell signaling and interaction; morphogenesis and development; apoptosis; bacterial conjugation; viral-host interaction; immunology

  q_bioGN,
//  (Genomics)
// DNA sequencing and assembly; gene and motif finding; RNA editing and alternative splicing; genomic structure and processes (replication, transcription, methylation, etc); mutational processes.

  q_bioMN,
//  (Molecular Networks)
// Gene regulation, signal transduction, proteomics, metabolomics, gene and enzymatic networks

  q_bioNC,
//  (Neurons and Cognition)
// Synapse, cortex, neuronal dynamics, neural network, sensorimotor control, behavior, attention

  q_bioOT,
//  (Other Quantitative Biology)
// Work in quantitative biology that does not fit into the other q-bio classifications

  q_bioPE,
//  (Populations and Evolution)
// Population dynamics, spatio-temporal and epidemiological models, dynamic speciation, co-evolution, biodiversity, foodwebs, aging; molecular evolution and phylogeny; directed evolution; origin of life

  q_bioQM,
//  (Quantitative Methods)
// All experimental, numerical, statistical and mathematical contributions of value to biology

  q_bioSC,
//  (Subcellular Processes)
// Assembly and control of subcellular structures (channels, organelles, cytoskeletons, capsules, etc.); molecular motors, transport, subcellular localization; mitosis and meiosis

  q_bioTO,
//  (Tissues and Organs)
// Blood flow in vessels, biomechanics of bones, electrical waves, endocrine system, tumor growth

// Quantitative Finance
  q_finCP,
//  (Computational Finance)
// Computational methods, including Monte Carlo, PDE, lattice and other numerical methods with applications to financial modeling

  q_finEC,
//  (Economics)
// q-fin.EC is an alias for econ.GN. Economics, including micro and macro economics, international economics, theory of the firm, labor economics, and other economic topics outside finance

  q_finGN,
//  (General Finance)
// Development of general quantitative methodologies with applications in finance

  q_finMF,
//  (Mathematical Finance)
// Mathematical and analytical methods of finance, including stochastic, probabilistic and functional analysis, algebraic, geometric and other methods

  q_finPM,
//  (Portfolio Management)
// Security selection and optimization, capital allocation, investment strategies and performance measurement

  q_finPR,
//  (Pricing of Securities)
// Valuation and hedging of financial securities, their derivatives, and structured products

  q_finRM,
//  (Risk Management)
// Measurement and management of financial risks in trading, banking, insurance, corporate and other applications

  q_finST,
// (Statistical Finance)
// Statistical, econometric and econophysics analyses with applications to financial markets and economic data

  q_finTR,
// (Trading and Market Microstructure)
// Market microstructure, liquidity, exchange and auction design, automated trading, agent-based modeling and market-making

// Statistics
  statAP,
// (Applications)
// Biology, Education, Epidemiology, Engineering, Environmental Sciences, Medical, Physical Sciences, Quality Control, Social Sciences

  statCO,
//  (Computation)
// Algorithms, Simulation, Visualization

  statME,
// (Methodology)
// Design, Surveys, Model Selection, Multiple Testing, Multivariate Methods, Signal and Image Processing, Time Series, Smoothing, Spatial Statistics, Survival Analysis, Nonparametric and Semiparametric Methods

  statML,
//  (Machine Learning)
// Covers machine learning papers (supervised, unsupervised, semi-supervised learning, graphical models, reinforcement learning, bandits, high dimensional inference, etc.) with a statistical or theoretical grounding

  statOT,
//  (Other Statistics)
// Work in statistics that does not fit into the other stat classifications

  statTH
// (Statistics Theory)
// stat.TH is an alias for math.ST. Asymptotics, Bayesian Inference, Decision Theory, Estimation, Foundations, Inference, Testing.
}
