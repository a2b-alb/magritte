initialize
initialize
	"Initialization code for SliderModel"

	super initialize.

	max := 10 asValueHolder.
	min := 0 asValueHolder.
	quantum := 1 asValueHolder.
	value := 5 asValueHolder.
	absoluteValue := 0.5 asValueHolder.
	labelHolder := '' asValueHolder.
	isChanging := false.
	
	max whenChangedDo: [:m | self widget ifNotNil: [:w | w max: m ]].
	min whenChangedDo: [:m | self widget ifNotNil: [:w | w min: m ]].
	quantum whenChangedDo: [:m | self widget ifNotNil: [:w | w quantum: m ]].
	
	value whenChangedDo: [:v |
		isChanging ifFalse: [
			isChanging := true.
			self absoluteValue: ((v-self min)/(self max-self min)).
			self widget ifNotNil: [:w | w == self ifFalse: [ w scaledValue: v ]].
			isChanging := false ]].
	
	absoluteValue whenChangedDo: [:v | 
		isChanging ifFalse: [
			isChanging := true.
			self value: (self min+(v*(self max-self min)) roundTo: self quantum).
			self widget ifNotNil: [:w | w == self ifFalse: [ w value: v ]].
			isChanging := false ]].
	
	labelHolder whenChangedDo: [	self widget ifNotNil: [:w | w updateLabel ]].