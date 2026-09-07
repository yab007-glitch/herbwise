-- FR translations for top-traffic herb FAQs (chat-log + head-query audit, Sep 2026).
-- Covers the 11 most-visited monographs (58 Q&A). Fully rerunnable: each
-- UPDATE matches one row by (herb slug, sort_order); missing rows are skipped.
-- The herb page overlays translations.fr on /fr URLs with per-field EN fallback.

ALTER TABLE public.herb_faqs ADD COLUMN IF NOT EXISTS translations JSONB DEFAULT '{}';

-- ashwagandha #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment l'ashwagandha agit-il dans l'organisme ?$q$, 'answer', $a$L'ashwagandha agit comme adaptogène principalement en modulant l'axe hypothalamo-hypophyso-surrénalien (HPA), qui régule la réponse au stress. Ses composés actifs, les withanolides, agissent comme mimétiques du GABA en se liant aux récepteurs GABA, produisant des effets calmants et anxiolytiques. Ce mécanisme aide à réduire le cortisol et soutient la capacité de l'organisme à maintenir l'homéostasie pendant les périodes de stress physique et psychologique. Niveau de preuve : B.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ashwagandha') AND sort_order = 0;

-- ashwagandha #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'ashwagandha interagit-il avec des médicaments ?$q$, 'answer', $a$Oui, l'ashwagandha présente des interactions médicamenteuses notables. Il peut potentialiser les effets des dépresseurs du système nerveux central et des sédatifs, augmentant la somnolence. Comme il peut stimuler la production d'hormones thyroïdiennes, il peut interférer avec les traitements substitutifs thyroïdiens et nécessiter des ajustements posologiques. De plus, en raison de ses effets immunomodulateurs, les personnes sous immunosuppresseurs doivent être prudentes. Consultez toujours un médecin avant de l'associer à des médicaments sur ordonnance. Niveau de preuve : C.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ashwagandha') AND sort_order = 1;

-- ashwagandha #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie quotidienne recommandée pour l'ashwagandha ?$q$, 'answer', $a$La posologie adulte standard d'extrait de racine d'ashwagandha est généralement de 300 à 600 mg par jour, standardisé à 2,5-5 % de withanolides. Les études cliniques sur le stress et l'anxiété utilisent souvent cette plage. Pour la vitalité générale, le bas de la fourchette suffit souvent, tandis que des doses plus élevées peuvent servir pour la performance sportive. Mieux vaut le prendre avec de la nourriture pour limiter les troubles gastro-intestinaux. Niveau de preuve : B.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ashwagandha') AND sort_order = 2;

-- ashwagandha #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'ashwagandha est-il sûr pendant la grossesse ?$q$, 'answer', $a$Non, l'ashwagandha est considéré comme dangereux pendant la grossesse. L'usage traditionnel et les données pharmacologiques suggèrent des propriétés abortives : il pourrait stimuler les contractions utérines et provoquer fausse couche ou accouchement prématuré. Les herboristes et autorités sanitaires recommandent donc d'éviter strictement les compléments d'ashwagandha pendant la grossesse et l'allaitement. Sécurité : déconseillé.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ashwagandha') AND sort_order = 3;

-- ashwagandha #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les principaux bienfaits de l'ashwagandha ?$q$, 'answer', $a$L'ashwagandha sert d'abord à réduire le stress et l'anxiété, avec des preuves cliniques d'une baisse significative du cortisol. Il soutient aussi la fertilité masculine (qualité du sperme, testostérone) et le sommeil grâce à ses propriétés sédatives. En tant que rasayana traditionnel, il favorise vitalité et régénération globales. Niveau de preuve : B.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ashwagandha') AND sort_order = 4;

-- chamomile #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment la camomille favorise-t-elle le sommeil et réduit-elle l'anxiété ?$q$, 'answer', $a$La camomille agit principalement via l'apigénine, un flavonoïde qui se lie à certains récepteurs des benzodiazépines du système nerveux central. Cette liaison produit un léger effet sédatif, favorisant détente et somnolence sans les effets secondaires marqués des sédatifs sur ordonnance. Le niveau de preuve B soutient ce mécanisme contre l'anxiété et pour la qualité du sommeil.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'chamomile') AND sort_order = 0;

-- chamomile #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$La camomille interagit-elle avec les anticoagulants comme la warfarine ?$q$, 'answer', $a$Oui, la camomille peut interagir avec les anticoagulants comme la warfarine. La plante contient des coumarines naturelles qui pourraient théoriquement augmenter le risque de saignement ou potentialiser les anticoagulants. Comme la camomille peut modifier le métabolisme des médicaments, les patients sous anticoagulants doivent consulter un professionnel de santé avant tisane ou compléments.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'chamomile') AND sort_order = 1;

-- chamomile #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le thé à la camomille est-il sûr pendant la grossesse ?$q$, 'answer', $a$La camomille est généralement considérée comme sûre pendant la grossesse en quantités modérées, comme 1 à 2 tasses par jour. Malgré son long usage pour le confort digestif, les femmes enceintes doivent éviter fortes doses et extraits concentrés. Mieux vaut consulter un professionnel de santé pour tout usage de plantes pendant la grossesse.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'chamomile') AND sort_order = 2;

-- chamomile #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie quotidienne recommandée pour la camomille ?$q$, 'answer', $a$Pour les adultes, 1 à 4 tasses de tisane par jour en général. Les gélules vont de 220 à 1100 mg par jour. Le niveau de preuve B soutient ces plages contre l'anxiété légère et les troubles digestifs. Commencez par une faible dose pour tester votre tolérance et éviter d'éventuelles nausées.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'chamomile') AND sort_order = 3;

-- chamomile #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les effets secondaires courants de la camomille ?$q$, 'answer', $a$Bien que généralement bien tolérée, la camomille peut provoquer des allergies, surtout chez les sensibles aux Astéracées (marguerites). Symptômes possibles : dermatite de contact ou, rarement, anaphylaxie. De fortes doses peuvent causer nausées ou somnolence. Le niveau de preuve B suggère des effets rares, mais les allergiques à l'ambroisie doivent rester prudents.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'chamomile') AND sort_order = 4;

-- echinacea #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment l'échinacée stimule-t-elle le système immunitaire ?$q$, 'answer', $a$L'échinacée contient des alkylamides et polysaccharides qui stimulent le système immunitaire. Elle semble augmenter les globules blancs et renforcer la phagocytose, processus par lequel les cellules engloutissent les bactéries. Elle pourrait aussi inhiber la hyaluronidase, enzyme que les bactéries utilisent pour franchir les barrières tissulaires, limitant la propagation des infections. Ce mécanisme immunostimulant soutient son usage contre les rhumes (niveau de preuve B).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'echinacea') AND sort_order = 0;

-- echinacea #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'échinacée interagit-elle avec des médicaments sur ordonnance ?$q$, 'answer', $a$Oui, interactions possibles. En stimulant le système immunitaire, elle peut contrecarrer les immunosuppresseurs utilisés dans les maladies auto-immunes ou les greffes. Risque théorique de toxicité hépatique combinée aux médicaments hépatotoxiques. Elle agit sur la voie CYP3A4, mais la portée clinique varie ; les patients sous anticoagulants ou antifongiques doivent consulter avant usage (niveau de preuve C/D).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'echinacea') AND sort_order = 1;

-- echinacea #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée pour l'échinacée ?$q$, 'answer', $a$Pour le soutien immunitaire, la dose adulte standard est de 300 à 500 mg d'extrait standardisé trois fois par jour. Sinon, 2,5 ml de teinture trois fois par jour. Plus efficace dès les premiers symptômes. L'usage continu prolongé est déconseillé, car l'effet immunostimulant peut s'atténuer (niveau de preuve B).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'echinacea') AND sort_order = 2;

-- echinacea #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'échinacée est-elle sûre pendant la grossesse ?$q$, 'answer', $a$L'échinacée est généralement considérée comme à éviter pendant la grossesse. Quelques études limitées ne montrent pas de risque majeur de malformations, mais ses propriétés immunostimulantes posent des risques théoriques pour le fœtus. Faute de données suffisantes et vu le risque allergique, les herboristes déconseillent l'usage pendant grossesse et allaitement. Les femmes ayant des antécédents de fausse couche doivent être particulièrement prudentes (niveau de preuve D).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'echinacea') AND sort_order = 3;

-- echinacea #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'échinacée est-elle efficace contre le rhume ?$q$, 'answer', $a$Les études suggèrent que l'échinacée peut réduire durée et sévérité des rhumes si prise dès le début. Elle diminuerait d'environ 10 à 20 % le risque de rhume déclaré et raccourcirait les symptômes d'environ un jour. Mais les résultats varient selon l'espèce et la préparation. Ce n'est pas un remède, mais un soutien symptomatique possible (niveau de preuve B).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'echinacea') AND sort_order = 4;

-- garlic #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment l'ail agit-il pour baisser la tension artérielle ?$q$, 'answer', $a$L'ail contient des composés soufrés, dont l'allicine, qui augmentent la production d'oxyde nitrique. Cela détend et dilate les vaisseaux, améliorant la circulation et réduisant la pression. L'ail inhibe aussi l'enzyme de conversion de l'angiotensine (ECA), offrant un double mécanisme de soutien cardiovasculaire avec des preuves de grade A.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'garlic') AND sort_order = 0;

-- garlic #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'ail interagit-il avec les anticoagulants comme la warfarine ?$q$, 'answer', $a$Oui, les compléments d'ail peuvent interagir avec les anticoagulants comme la warfarine et les antiplaquettaires. Grâce à ses propriétés antiplaquettaires, l'ail combiné aux anticoagulants peut augmenter le risque de saignement. Les médecins conseillent généralement d'arrêter les compléments d'ail 1 à 2 semaines avant une chirurgie programmée.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'garlic') AND sort_order = 1;

-- garlic #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie quotidienne recommandée pour les compléments d'ail ?$q$, 'answer', $a$Les recommandations cliniques suggèrent 600 à 1200 mg d'extrait d'ail vieilli par jour pour un effet thérapeutique. Sinon, 2 à 5 grammes d'ail frais (1 à 2 gousses) apportent des bienfaits similaires. La régularité compte pour le soutien cardiovasculaire ; les estomacs sensibles commenceront par de faibles doses.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'garlic') AND sort_order = 2;

-- garlic #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'ail est-il sûr pendant la grossesse ?$q$, 'answer', $a$L'ail est considéré comme sûr pendant la grossesse en quantités culinaires normales. Mais les doses médicinales ou compléments concentrés doivent être discutés avec un professionnel de santé. Un apport élevé peut causer brûlures d'estomac ou troubles digestifs, aggravant des symptômes courants comme les nausées matinales.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'garlic') AND sort_order = 3;

-- garlic #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$L'ail stimule-t-il vraiment le système immunitaire ?$q$, 'answer', $a$Oui, l'ail stimule l'activité des cellules immunitaires comme macrophages et lymphocytes, aidant à combattre les infections. Ses propriétés antimicrobiennes, documentées depuis les travaux de Louis Pasteur en 1858, combattent bactéries et virus. Une consommation régulière peut réduire sévérité et durée des rhumes, selon l'usage traditionnel et les preuves cliniques modernes.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'garlic') AND sort_order = 4;

-- ginkgo-biloba #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le ginkgo biloba agit-il dans l'organisme ?$q$, 'answer', $a$Le ginkgo agit via ses flavonoïdes et terpénoïdes. Les flavonoïdes neutralisent les radicaux libres comme antioxydants puissants, tandis que les terpénoïdes (ginkgolides) améliorent la circulation en dilatant les vaisseaux et en réduisant l'agrégation plaquettaire. Ce double mécanisme soutient fonctions cognitives et santé circulatoire. Le niveau de preuve A soutient ces effets physiologiques.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginkgo-biloba') AND sort_order = 0;

-- ginkgo-biloba #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Puis-je prendre du ginkgo avec des anticoagulants comme la warfarine ?$q$, 'answer', $a$Le ginkgo doit être utilisé avec prudence avec les anticoagulants comme la warfarine ou les antiplaquettaires. Ses propriétés antiplaquettaires peuvent augmenter le risque de saignement. Les patients sous anticoagulants doivent consulter avant usage. Les preuves cliniques suggèrent des interactions potentiellement graves (niveau de preuve B).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginkgo-biloba') AND sort_order = 1;

-- ginkgo-biloba #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée pour le ginkgo biloba ?$q$, 'answer', $a$La dose adulte standard est de 120 à 240 mg d'extrait standardisé par jour, en deux ou trois prises pour des taux stables. Les extraits standardisés garantissent une teneur constante en actifs comme les ginkgolides. Suivez toujours l'étiquette ou un avis professionnel.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginkgo-biloba') AND sort_order = 2;

-- ginkgo-biloba #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le ginkgo biloba est-il sûr pendant la grossesse ?$q$, 'answer', $a$Le ginkgo est considéré comme dangereux pendant grossesse et allaitement. Ses effets antiplaquettaires et le risque accru de saignement peuvent compliquer grossesse ou accouchement. Les données de sécurité sont insuffisantes. Les herboristes déconseillent fortement son usage enceinte.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginkgo-biloba') AND sort_order = 3;

-- ginkgo-biloba #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le ginkgo améliore-t-il vraiment la mémoire ?$q$, 'answer', $a$Les recherches sur la mémoire montrent des résultats mitigés. Certaines études suggèrent un bénéfice pour les symptômes du déclin cognitif ou la circulation cérébrale, mais les preuves d'amélioration significative chez les personnes en bonne santé sont moins nettes. Plus efficace pour le soutien cognitif lié à l'âge (niveau de preuve A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginkgo-biloba') AND sort_order = 4;

-- ginseng #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le ginseng de Panax agit-il dans l'organisme ?$q$, 'answer', $a$Le ginseng de Panax agit via ses ginsénosides, qui interagissent avec l'axe hypothalamo-hypophyso-surrénalien. Ces composés modulent la fonction immunitaire, améliorent l'utilisation de l'oxygène et influencent la production d'oxyde nitrique pour la circulation. Ce mécanisme adaptogène aide à résister au stress physique et mental, soutenant énergie et cognition (niveau de preuve : A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginseng') AND sort_order = 0;

-- ginseng #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le ginseng de Panax interagit-il avec les anticoagulants ou médicaments ?$q$, 'answer', $a$Oui, le ginseng de Panax peut interagir avec les anticoagulants comme la warfarine, réduisant potentiellement son efficacité et augmentant les risques de caillots. Il peut aussi interagir avec les antidiabétiques en abaissant davantage la glycémie. Les patients sous stimulants ou IMAO doivent l'éviter en raison d'épisodes hypertensifs possibles (niveau de preuve : B).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginseng') AND sort_order = 1;

-- ginseng #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie quotidienne recommandée pour le ginseng de Panax ?$q$, 'answer', $a$La dose adulte standard est de 200 à 400 mg d'extrait standardisé par jour, ou 0,5 à 2 grammes de racine séchée. Pour maintenir l'efficacité et éviter l'accoutumance, les herboristes recommandent souvent des cycles, par exemple deux à trois semaines de prise suivies d'une à deux semaines de pause (niveau de preuve : A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginseng') AND sort_order = 2;

-- ginseng #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le ginseng est-il sûr pendant la grossesse ?$q$, 'answer', $a$Le ginseng de Panax est considéré comme dangereux pendant grossesse et allaitement. Les ginsénosides pourraient avoir une activité œstrogénique interférant avec le développement fœtal ou provoquant des contractions utérines. Faute de données de sécurité, les femmes enceintes doivent totalement éviter cette plante (niveau de preuve : C).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginseng') AND sort_order = 3;

-- ginseng #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le ginseng de Panax aide-t-il vraiment contre la fatigue ?$q$, 'answer', $a$Oui, les études cliniques soutiennent la capacité du ginseng à combattre la fatigue et améliorer l'endurance. En adaptogène, il aide à mieux gérer le stress plutôt qu'en stimulant. Les preuves montrent une amélioration du métabolisme énergétique et une réduction des dommages oxydatifs, efficace contre la fatigue chronique (niveau de preuve : A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'ginseng') AND sort_order = 4;

-- kava #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le kava réduit-il l'anxiété ?$q$, 'answer', $a$Les composés actifs du kava, les kavalactones, agissent en se liant aux récepteurs GABA-A du cerveau, renforçant les effets calmants de l'acide gamma-aminobutyrique (GABA), principal neurotransmetteur inhibiteur. Les kavalactones modulent aussi les canaux ioniques voltage-dépendants et influencent les voies dopaminergiques et sérotoninergiques. Ce mécanisme multi-cibles produit des effets anxiolytiques et myorelaxants sans altérer significativement la cognition aux doses standards. Souvent comparé aux benzodiazépines, mais sans le même risque de dépendance. Niveau de preuve : C.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'kava') AND sort_order = 0;

-- kava #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels médicaments interagissent avec le kava ?$q$, 'answer', $a$Le kava a des interactions importantes et ne doit pas être associé aux dépresseurs du système nerveux central (benzodiazépines, alcool, barbituriques, anticonvulsivants) : risque de sédation excessive et de dépression respiratoire. Il inhibe plusieurs enzymes CYP450 hépatiques, pouvant augmenter les taux sanguins des médicaments métabolisés par ces voies. Évitez l'association au paracétamol, aux statines ou autres substances hépatotoxiques. Vu la charge hépatique cumulative, jamais avec l'alcool. Niveau de preuve : C.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'kava') AND sort_order = 1;

-- kava #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée du kava contre l'anxiété ?$q$, 'answer', $a$La dose adulte standard contre l'anxiété est de 120 à 250 mg de kavalactones par jour, en deux ou trois prises. Cela correspond à 1-2 grammes de racine séchée ou 2-4 ml d'extrait liquide par jour. Les extraits standardisés à 70 % de kavalactones sont courants en clinique. Les effets débutent en 1 à 2 heures. Un usage quotidien au-delà de 3 mois est déconseillé sans suivi médical en raison du risque hépatique. Niveau de preuve : C.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'kava') AND sort_order = 2;

-- kava #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le kava est-il sûr pendant la grossesse et l'allaitement ?$q$, 'answer', $a$Le kava est considéré comme dangereux pendant grossesse et allaitement et doit être totalement évité. Les données de sécurité fœtales sont insuffisantes, et les kavalactones pourraient traverser le placenta ou passer dans le lait. Ses effets hépatiques et nerveux présentent des risques pour le fœtus et le nourrisson. Ses propriétés sédatives pourraient aussi perturber le développement et l'alimentation du nourrisson. Les femmes enceintes, planifiant une grossesse ou allaitantes ne doivent pas utiliser le kava. Niveau de preuve : D.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'kava') AND sort_order = 3;

-- kava #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le kava provoque-t-il des lésions hépatiques ?$q$, 'answer', $a$Des cas d'atteintes hépatiques liées au kava ont entraîné des interdictions au début des années 2000. Mais les analyses ultérieures suggèrent que la plupart des cas impliquaient des produits de mauvaise qualité, de mauvaises parties de la plante (feuilles et tiges au lieu de la noble racine) ou des pathologies hépatiques préexistantes. Les extraits de racine contrôlés de sources réputées semblent présenter un faible risque aux doses recommandées. Les personnes atteintes de maladie hépatique, les gros consommateurs d'alcool ou sous médicaments hépatotoxiques doivent totalement éviter le kava. Niveau de preuve : C.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'kava') AND sort_order = 4;

-- milk-thistle #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le chardon-Marie protège-t-il le foie ?$q$, 'answer', $a$Le chardon-Marie agit via la silymarine, un complexe de flavonolignanes qui stabilise les membranes cellulaires et empêche les toxines de pénétrer les cellules hépatiques. Puissant antioxydant, il réduit le stress oxydatif et l'inflammation tout en stimulant la synthèse protéique pour la régénération hépatique. Le niveau de preuve A soutient son blocage des sites de liaison des toxines sur les hépatocytes.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 0;

-- milk-thistle #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le chardon-Marie interagit-il avec des médicaments sur ordonnance ?$q$, 'answer', $a$Oui, le chardon-Marie peut interagir avec les médicaments métabolisés par le cytochrome P450 hépatique. Bien que son potentiel d'interaction soit généralement faible, il peut modifier le métabolisme de certains médicaments comme les statines et les anticoagulants. Il peut aussi renforcer les antidiabétiques, avec risque d'hypoglycémie.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 1;

-- milk-thistle #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée pour le chardon-Marie ?$q$, 'answer', $a$La dose adulte standard pour le soutien hépatique est de 200 à 400 mg de silymarine (standardisée à 70-80 %) deux à trois fois par jour. Cette plage est soutenue par des preuves de niveau A pour l'effet hépatoprotecteur. La silymarine étant peu biodisponible, des prises fractionnées maintiennent des taux sanguins stables.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 2;

-- milk-thistle #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le chardon-Marie est-il sûr pendant la grossesse ?$q$, 'answer', $a$Le chardon-Marie est considéré comme à éviter pendant la grossesse faute de données suffisantes et d'effets utérins possibles. Bien que traditionnellement utilisé pour stimuler la lactation, les preuves cliniques manquent. Les femmes enceintes, allaitantes ou en projet de grossesse doivent l'éviter sauf avis médical qualifié.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 3;

-- milk-thistle #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les principaux bienfaits du chardon-Marie ?$q$, 'answer', $a$Le chardon-Marie sert d'abord à protéger le foie et traiter cirrhose, hépatites et stéatose (niveau de preuve A). Il soutient aussi la vésicule biliaire et aide à réguler la glycémie. Historiquement, la silibinine intraveineuse servait d'antidote d'urgence contre l'amanite phalloïde grâce à son puissant effet hépatoprotecteur.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 4;

-- milk-thistle #5
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Qui ne doit pas prendre de compléments de chardon-Marie ?$q$, 'answer', $a$Les allergiques aux Astéracées (ambroisie, marguerites, soucis) doivent éviter le chardon-Marie (réactions croisées). Les personnes avec pathologies hormono-dépendantes resteront prudentes car la silymarine peut avoir de légers effets œstrogéniques. Les diabétiques sous traitement surveilleront leur glycémie pour éviter l'hypoglycémie.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'milk-thistle') AND sort_order = 5;

-- st-johns-wort #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le millepertuis agit-il contre la dépression ?$q$, 'answer', $a$Le millepertuis exerce ses effets antidépresseurs par plusieurs mécanismes. Ses principaux actifs, l'hypéricine et l'hyperforine, inhibent la recapture de la sérotonine, de la dopamine et de la noradrénaline, augmentant leur disponibilité. L'hyperforine module aussi les récepteurs GABA et glutamate et les canaux ioniques. Ce mécanisme multi-cibles le distingue des antidépresseurs à action unique. Le niveau de preuve A soutient son efficacité dans la dépression légère à modérée, comparable à certains antidépresseurs conventionnels.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 0;

-- st-johns-wort #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels médicaments interagissent avec le millepertuis ?$q$, 'answer', $a$Le millepertuis induit les cytochromes P450, surtout le CYP3A4, accélérant le métabolisme de nombreux médicaments et réduisant leur efficacité. Interactions critiques : ISRS et IMAO (risque de syndrome sérotoninergique). Il réduit l'efficacité des contraceptifs oraux, de la warfarine, de la ciclosporine, de la digoxine, des antirétroviraux et des immunosuppresseurs. Les transplantés et patients VIH doivent totalement l'éviter. Consultez toujours avant toute association.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 1;

-- st-johns-wort #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée du millepertuis contre la dépression ?$q$, 'answer', $a$La dose adulte standard pour la dépression légère à modérée est de 300 mg d'extrait standardisé (0,3 % d'hypéricine) trois fois par jour, soit 900 mg quotidiens. Cette posologie est soutenue par des essais de niveau A montrant une efficacité comparable aux antidépresseurs conventionnels. Les effets thérapeutiques demandent 4 à 6 semaines d'usage régulier. Des doses plus faibles conviennent à d'autres indications. Suivez l'étiquette ou un avis professionnel pour une posologie personnalisée.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 2;

-- st-johns-wort #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le millepertuis est-il sûr pendant la grossesse et l'allaitement ?$q$, 'answer', $a$Le millepertuis est considéré comme dangereux pendant grossesse et allaitement. Les données sont limitées, et ses actifs peuvent traverser le placenta et passer dans le lait. Ses propriétés inductrices enzymatiques pourraient perturber le métabolisme fœtal des médicaments et le développement. Aucune étude adéquate n'établit la sécurité. Les femmes enceintes, planifiant une grossesse ou allaitantes doivent éviter le millepertuis et consulter pour des alternatives adaptées à l'humeur.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 3;

-- st-johns-wort #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le millepertuis peut-il provoquer des effets secondaires ?$q$, 'answer', $a$Le millepertuis est généralement bien toléré mais peut causer des effets indésirables. Le plus notable est la photosensibilisation, surtout sur peau claire, avec coups de soleil ou réactions cutanées sévères. Autres effets courants : bouche sèche, vertiges, troubles gastro-intestinaux, fatigue, agitation. Ces effets sont généralement légers et dose-dépendants. Arrêtez en cas de réaction cutanée sévère. Les patients bipolaires ou schizophrènes doivent l'éviter (risque d'épisode maniaque ou psychotique).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 4;

-- st-johns-wort #5
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le millepertuis est-il efficace contre la dépression ?$q$, 'answer', $a$Les preuves soutiennent fortement le millepertuis dans la dépression légère à modérée (niveau de preuve A). Plusieurs méta-analyses montrent des extraits standardisés aussi efficaces que certains antidépresseurs sur ordonnance. Mais les preuves sont moins solides pour la dépression sévère. L'efficacité tient à l'hypéricine et à l'hyperforine. Ne traitez jamais seul une dépression sévère et consultez avant d'arrêter ou d'associer des traitements.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'st-johns-wort') AND sort_order = 5;

-- turmeric #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment le curcuma réduit-il l'inflammation ?$q$, 'answer', $a$Le principal actif du curcuma, la curcumine, réduit l'inflammation par plusieurs voies moléculaires. Elle inhibe des enzymes inflammatoires clés (COX-2, 5-LOX), bloque la signalisation NF-kappaB (facteur de transcription inflammatoire majeur) et supprime des cytokines pro-inflammatoires (TNF-alpha, interleukines). La curcumine agit aussi comme antioxydant puissant, neutralisant les radicaux libres qui déclenchent les cascades inflammatoires. Ce mécanisme multi-cibles explique son efficacité variée. Le niveau de preuve A soutient ses effets anti-inflammatoires, mais l'absorption augmente nettement avec la pipérine ou les formes liposomales.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 0;

-- turmeric #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le curcuma interagit-il avec les anticoagulants ou autres médicaments ?$q$, 'answer', $a$Oui, le curcuma peut interagir avec plusieurs médicaments. Par ses légères propriétés fluidifiantes, il peut renforcer les anticoagulants (warfarine, aspirine, clopidogrel) et augmenter le risque de saignement. Il peut potentialiser les antidiabétiques (hypoglycémie). Il gêne l'absorption du fer : espacez-le de plusieurs heures. Stimulant la bile, il est contre-indiqué en cas de calculs biliaires ou d'obstruction. Consultez toujours avant d'associer des compléments de curcuma aux médicaments sur ordonnance.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 1;

-- turmeric #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Combien de curcuma prendre par jour contre l'inflammation ?$q$, 'answer', $a$La recherche soutient 500 à 2000 mg d'extrait standardisé par jour (généralement 95 % de curcuminoïdes), soit environ 1 à 3 grammes de poudre. La curcumine étant mal absorbée, les formes avec pipérine (poivre noir) ou liposomales améliorent nettement l'absorption. L'usage traditionnel emploie souvent plus de poudre entière en cuisine. Fractionnez les prises avec les repas pour absorber et limiter les troubles digestifs. Le niveau de preuve A soutient ces dosages.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 2;

-- turmeric #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Le curcuma est-il sûr pendant la grossesse ?$q$, 'answer', $a$Les compléments de curcuma sont considérés comme dangereux pendant la grossesse et à éviter. Si le curcuma culinaire reste généralement acceptable, les extraits concentrés posent des risques par leurs propriétés emménagogues : stimulation des contractions utérines, fausse couche ou accouchement prématuré possibles. Le curcuma affecte aussi la coagulation, compliquant l'accouchement. Les femmes allaitantes éviteront aussi les doses thérapeutiques, faute de données. Consultez avant tout complément. L'usage traditionnel contre-indique le curcuma enceinte.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 3;

-- turmeric #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les principaux bienfaits du curcuma pour la santé ?$q$, 'answer', $a$Le curcuma offre de multiples bienfaits prouvés. D'abord un puissant anti-inflammatoire pour arthrose et polyarthrite rhumatoïde (niveau de preuve A). Il soutient la digestion en stimulant la bile et en protégeant la muqueuse gastrique. Il favorise le foie via son action antioxydante et aide la cicatrisation en usage topique. La recherche explore aussi ses bienfaits pour la peau, le cœur et la cognition. Les médecines ayurvédique et chinoise l'utilisent depuis des millénaires, et la recherche moderne valide nombre d'usages traditionnels.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 4;

-- turmeric #5
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les effets secondaires des compléments de curcuma ?$q$, 'answer', $a$Le curcuma est généralement bien toléré, mais des effets existent à fortes doses. Troubles gastro-intestinaux courants : nausées, diarrhée, maux d'estomac. La coloration jaune des selles est normale et sans danger. Certains développent une dermatite de contact en usage topique. De fortes doses peuvent élever les enzymes hépatiques chez les sensibles. Les porteurs de calculs biliaires éviteront le curcuma stimulant la bile. Arrêtez au moins deux semaines avant une chirurgie (effet fluidifiant). La plupart des effets sont légers et régressent à l'arrêt ou à dose réduite.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'turmeric') AND sort_order = 5;

-- valerian #0
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Comment la racine de valériane aide-t-elle à dormir ?$q$, 'answer', $a$La racine de valériane agit via l'acide valérénique, qui interagit avec les récepteurs GABA (acide gamma-aminobutyrique). Le GABA, principal neurotransmetteur inhibiteur, favorise détente et somnolence. L'acide valérénique freine la dégradation du GABA, augmentant sa disponibilité synaptique. Valépotriates et acide isovalérique ajouteraient des effets sédatifs similaires. Ce mécanisme ressemble aux somnifères sur ordonnance, en plus doux (niveau de preuve A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'valerian') AND sort_order = 0;

-- valerian #1
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Peut-on prendre de la valériane avec d'autres somnifères ou antidépresseurs ?$q$, 'answer', $a$La valériane ne doit pas être associée aux dépresseurs du SNC : benzodiazépines, barbituriques, somnifères comme le zolpidem, ni à l'alcool — risque de sédation excessive et de dépression respiratoire. Interactions possibles avec antidépresseurs et anticonvulsivants. Les insuffisants hépatiques éviteront la valériane (hépatotoxicité possible). Consultez toujours avant toute association, les interactions pouvant être graves.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'valerian') AND sort_order = 1;

-- valerian #2
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quelle est la posologie recommandée de la valériane contre l'insomnie ?$q$, 'answer', $a$La dose adulte standard est de 300 à 600 mg d'extrait de racine standardisé 30 à 60 minutes avant le coucher. Contre l'anxiété, des doses similaires jusqu'à trois fois par jour. En tisane : 2 à 3 grammes de racine séchée infusés. La régularité compte — la valériane semble plus efficace en usage régulier sur plusieurs semaines qu'en prise unique (niveau de preuve A).$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'valerian') AND sort_order = 2;

-- valerian #3
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$La racine de valériane est-elle sûre pendant la grossesse ?$q$, 'answer', $a$La valériane n'est pas considérée comme sûre pendant grossesse et allaitement et doit être évitée. Les données sont insuffisantes, et les risques fœtaux ne peuvent être écartés. Ses actifs, dont les valépotriates, pourraient traverser le placenta ou passer dans le lait. Les femmes enceintes souffrant de troubles du sommeil consulteront pour des alternatives adaptées à la grossesse.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'valerian') AND sort_order = 3;

-- valerian #4
UPDATE public.herb_faqs SET translations = jsonb_build_object('fr', jsonb_build_object('question', $q$Quels sont les effets secondaires courants de la valériane ?$q$, 'answer', $a$Effets courants : somnolence matinale, maux de tête, rêves intenses. Paradoxalement, certains ressentent excitation ou nervosité plutôt que sédation. Troubles digestifs et nausées possibles, liés aussi à sa forte odeur. Un usage prolongé peut créer une dépendance avec sevrage à l'arrêt. Ne conduisez pas après en avoir pris. La plupart des effets sont légers et régressent à l'arrêt. Consultez si persistance.$a$))
WHERE herb_id = (SELECT id FROM public.herbs WHERE slug = 'valerian') AND sort_order = 4;
