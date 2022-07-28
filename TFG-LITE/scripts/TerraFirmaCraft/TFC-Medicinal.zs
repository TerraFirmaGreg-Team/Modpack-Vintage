import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// Массивы
val ExtractHolder as IOreDictEntry[] = [
  <ore:herbalExtractHolder>,
  <ore:livelyExtractHolder>,
  <ore:energeticExtractHolder>,
  <ore:focusedExtractHolder>,
  <ore:earthyExtractHolder>,
  <ore:pureExtractHolder>,
  <ore:fragrantExtractHolder>
];

val Extract as IItemStack[] = [
  <tfcmedicinal:extract/herbal>, 
  <tfcmedicinal:extract/lively>, 
  <tfcmedicinal:extract/energetic>,
  <tfcmedicinal:extract/focused>,
  <tfcmedicinal:extract/earthy>, 
  <tfcmedicinal:extract/pure>,
  <tfcmedicinal:extract/fragrant>
];

for i, Extract in Extract {
    recipes.addShapeless(Extract, [ExtractHolder[i], <tfcmedicinal:mpestle>.reuse()]);
    macerator.recipeBuilder()
    	.inputs(ExtractHolder[i])
    	.outputs(Extract)
    	.duration(20).EUt(7).buildAndRegister();
}