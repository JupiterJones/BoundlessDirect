Install
install
  "BDRoot install"

  | application filter exceptionHandlerAttribute |
  application := WAAdmin register: self asApplicationAt: 'BoundlessDirect'.
  application preferenceAt: #'sessionClass' put: WASession.
  filter := WAExceptionFilter new.
  exceptionHandlerAttribute := filter configuration
    attributeAt: #'exceptionHandler'.
  filter configuration
    takeValue: WAGemStoneWalkbackErrorHandler
    forAttribute: exceptionHandlerAttribute.	"application addFilter: filter."
  application
    addLibrary: JQDevelopmentLibrary;
    addLibrary: JQUiDevelopmentLibrary;
    addLibrary: JQOvercastTheme;
    addLibrary: BDFileLibrary