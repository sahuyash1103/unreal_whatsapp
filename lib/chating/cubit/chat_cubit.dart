import 'package:bloc/bloc.dart';

import 'package:unreal_whatsapp/chating/cubit/chat_state.dart';
import 'package:unreal_whatsapp/chating/data/models/chat_contact.dart';
import 'package:unreal_whatsapp/chating/data/repositories/chat_repository.dart';
import 'package:unreal_whatsapp/login/data/models/app_user.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required this.chatRepository,
  }) : super(ChatInitial());
  final ChatRepository chatRepository;

  Stream<List<ChatContact>> fetchChatContacts() {
    return chatRepository.fetchChatContacts();
  }

  Future<void> sendTextMessage({
    required String text,
    required String recieverID,
    required AppUser sender,
  }) async {
    try {
      emit(ChatSendingState());
      await chatRepository.sendTextMessage(
        text: text,
        recieverID: recieverID,
        sender: sender,
      );
      emit(ChatSentState());
    } catch (e) {
      emit(ChatErrorState(e.toString()));
    }
  }
}
