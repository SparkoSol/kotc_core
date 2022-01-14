part of kotc_core;

@RestApi(baseUrl: '')
abstract class FlashCardsApi {
  factory FlashCardsApi() => _FlashCardsApi(Api.client);

  @GET('/flashcards/user/{user}')
  Future<List<FlashCardModel>> getAllFlashCards(
    @Path('user') String userId,
  );

  @GET('/flashcards/deck/{deck}')
  Future<List<FlashCardModel>> getDeckFlashCards(
    @Path('deck') String deckId,
  );

  @POST('/flashcards')
  Future addFlashCard(@Body() FlashCardModel flashCard);

  @POST('/decks')
  Future addDeck(@Body() DeckModel deck);

  @GET('/decks/user/{user}')
  Future<List<DeckModel>> getAllDecks(
    @Path('user') String userId,
  );
}
