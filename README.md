# glead
(G)reek New Testament - (L)exicon based - (A)ccurate (D)rafting (E)ngine

## Background:
Drafting using statistical machine translation (SMT) requires corpus that is not readily available for drafting Bibles. Previous workflow included a list of words used translated to single most common usage for seeding an engine. As each segment/sentence was translated, it was added to the corpus and the engine updated/trained/tuned for latest data. Alignment was approximate and required many examples before reliable in a single domain. Engines were typically between a gateway langauge such as English to the target language such as Hindi which added loss from the source if it came from Greek such as the New Testament.

## Use Case:
The Bible, specifically the Greek New Testament (GNT) is a single small domain of vocabulary. Each Greek word in the source has a set number of possible meanings which most likely require a different translation for each meaning. In place of translating most common single meaning of a source word from a gateway language like English into a target language like Hindi, translating a lexicon of meanings can allow for and support varied translated terms. 

Lexicons exist for Greek to English. Translating an existing lexicon from English to a target language like Hindi allows for a draft to be generated embedded with extra metadata for each source word including varied definitions, multiple example contexts and parts of speech. Even with a single definition being translated, translating from the source Greek text offers less loss than starting from a translation.

## Prototype:
Starting with Ephesians Chapter 3 for the Prototype. This offers limited source segments and words to understand if the project can meet its goals and know if further modifications to the scope are needed. Lexicon will be converted into a CSV and translated in Google Sheets for ease of implementation.

Sources for prototype are:

+ Nestle 1904 GNT: https://github.com/biblicalhumanities/Nestle1904
+ Dodson-Greek Lexicon: https://github.com/biblicalhumanities/Dodson-Greek-Lexicon
+ Literary Devices extracted from - Translation for Translators: http://ebible.org/t4t/

## Workflow/Scope:
Items marked * are outside project scope.

### Prerequisites:

1. *Curate the source text so that varied manuscript variants are resolved.
2. *Curate the source lexicon so that the various meanings are represented.
3. *Translate the source lexicon into target language such as Hindi.
4. *Curate the contextual examples for source words, derived from Strong's ids.
5. *Curate additional metadata to embed such as literary devices.
6. *Curate links to supplemental notes associated to each segment/verse.

### This project:

6. Serialize the source text into a key-value data structure.
7. Serialize additional metadata and links to supplental notes for lookup.
8. Serialize the translated lexicon into a key-value data structure for lookup.
9. Template the draft output to include metadata such as lexicon variances, literary devices, notes, and contextual examples.

### Post-editing and checking:

10. *Post-edit draft output while referencing metadata for each source word.
11. *Verify the post-edited work using additional metadata and checking workflows.
12. *Align translated text words/phrases to source greek text by Strong's ids by drag and drop.
13. *Leverage completed/verified translations as reference material for future drafts and checking steps.
