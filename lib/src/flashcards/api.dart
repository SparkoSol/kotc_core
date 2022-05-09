// part of kotc_core;
//
// @RestApi(baseUrl: '')
// abstract class FlashCardsApi {
//   factory FlashCardsApi() => _FlashCardsApi(Api.client);
//
//   @GET('/flashcards/user/{user}')
//   Future<List<FlashCardResponse>> getAllFlashCards(
//     @Path('user') String userId,
//   );
//
//   @GET('/flashcards/deck/{deck}')
//   Future<List<FlashCardResponse>> getDeckFlashCards(
//     @Path('deck') String deckId,
//   );
//
//   @POST('/flashcards/decks')
//   Future<List<FlashCardResponse>> getDecksFlashCards(
//     @Body() DecksFlashCardRequest request,
//   );
//
//   @GET('/flashcards/admin/{deck}')
//   Future<List<FlashCardResponse>> getAdminDeckFlashCards(
//     @Path('deck') String deckId,
//   );
//
//   @POST('/flashcards')
//   Future addFlashCard(@Body() FlashCardRequest flashCard);
//
//   @PATCH('/flashcards')
//   Future updateFlashCard(@Body() FlashCardRequest flashCard);
//
//   @DELETE('/flashcards/{id}')
//   Future deleteFlashCard(@Path('id') String id);
//
//   @PUT('/flashcards/update-next-time/{id}/difficulty/{difficulty}')
//   Future<FlashCardResponse> updateNextShowTime(
//     @Path('id') String flashcardId,
//     @Path('difficulty') int difficulty,
//   );
//
//   @POST('/decks')
//   Future<SimpleResponse> addDeck(@Body() DeckModel deck);
//
//   @PATCH('/decks')
//   Future updateDeck(@Body() DeckModel deck);
//
//   @GET('/flashcards/decks/user/{user}')
//   Future<List<DeckModel>> getAllDecks(
//     @Path('user') String userId,
//   );
//
//   @GET('/decks/admin')
//   Future<List<DeckModel>> getAdminDecks();
//
//   @GET('/decks/admin/non-premium')
//   Future<List<DeckModel>> getNonPremiumAdminDecks();
// }
