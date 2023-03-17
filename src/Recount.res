module Recount = {
    /**
   * External dependencies/optional parameters are:
   * - rootId (where to get text from);
   * - ?wpm (words per minute, optional set to 200) - hint: offering preset? e.g. medium=265
   * - ?template: an HTML template literal
   * @returns
   * - 
   */
  type tSpeed = {
    slow: int,
    relaxed: int,
    moderate: int,
    fast: int,
    lightSpeed: int,
    ludicrousSpeed: int,
  }

  let readingSpeed = {
    slow: 200,
    relaxed: 230,
    moderate: 260,
    fast: 290,
    lightSpeed: 320,
    ludicrousSpeed: 350
  }
}