#import "/template/abstract.typ": include_abstract
#import "../data/abstract.typ": abstracts

#for abstract in abstracts {
  include_abstract(
    title: abstract.title,
    abstract.body,
  )
}
