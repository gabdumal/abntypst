#import "/template/academic_work/pages/abstract.typ": include_abstract
#import "../data/abstract.typ": abstracts

#for abstract in abstracts {
  include_abstract(
    keywords_title: abstract.keywords_title,
    keywords: abstract.keywords,
    title: abstract.title,
    body: abstract.body,
  )
}
