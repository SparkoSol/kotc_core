part of kotc_core;

@RestApi(baseUrl: '')
abstract class FlashCardsApi {
  factory FlashCardsApi() => _FlashCardsApi(Api.client);

  @GET('/flashcards/user/{user}')
  Future<List<FlashCardResponse>> getAllFlashCards(
    @Path('user') String userId,
  );

  @GET('/flashcards/deck/{deck}')
  Future<List<FlashCardResponse>> getDeckFlashCards(
    @Path('deck') String deckId,
  );

  @POST('/flashcards')
  Future addFlashCard(@Body() FlashCardRequest flashCard);

  @PATCH('/flashcards')
  Future updateFlashCard(@Body() FlashCardRequest flashCard);

  @PATCH('/flashcards/last-show-time/{id}')
  Future updateFlashCardTime(@Path('id') String cardId);

  @POST('/decks')
  Future addDeck(@Body() DeckModel deck);

  @GET('/decks/user/{user}')
  Future<List<DeckModel>> getAllDecks(
    @Path('user') String userId,
  );
}
