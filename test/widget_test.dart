import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:miocardio_paciente/localization.dart';
import 'package:miocardio_paciente/pages/home.dart';
import 'package:miocardio_paciente/pages/info.dart';
import 'package:miocardio_paciente/pages/login.dart';
import 'package:miocardio_paciente/pages/questionsPage.dart';
import 'package:miocardio_paciente/pages/reminderPage.dart';

void main() {
// É necessário que, a cada alteração feita nos arquivos string_en e string_pt,
// seja feita uma atualização das verificações

  testWidgets('Testando login (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('pt')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Login(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e vrificando campos
      Finder email = find.text('Email');
      Finder password = find.text('Senha');
      expect(email, findsOneWidget);
      expect(password, findsOneWidget);

      //Busca e verifica o botão
      Finder button = find.text("Entrar");
      expect(button, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando login (ingles)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('en')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Login(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e vrificando campos
      Finder email = find.text('Email');
      Finder password = find.text('Password');
      expect(email, findsOneWidget);
      expect(password, findsOneWidget);

      //Busca e verifica o botão
      Finder button = find.text("Sign in");
      expect(button, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando home (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('pt')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Home(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Inicial');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando home (ingles)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('en')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Home(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Home');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando ask (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('pt')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: QuestionsPage(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();

      Finder pageTitle = find.text("Perguntas frequentes");
      expect(pageTitle, findsOneWidget);

      // Busca e verificando perguntas
      Finder q1 = find.text("Qual a diferença entre miocardia e miocardite?");
      expect(q1, findsOneWidget);
      Finder q2 = find.text("O que é miocardite?");
      expect(q2, findsOneWidget);
      Finder q3 = find.text("O que miocardiopatia isquêmica?");
      expect(q3, findsOneWidget);
      Finder q4 = find.text("O que causa a inflamação no miocárdio?");
      expect(q4, findsOneWidget);

      //abre card de resposta
      await tester.tap(q2);
      await tester.pumpAndSettle();

      //verifica texto da resposta
      Finder a2 = find.text("É a inflamação do músculo do coração, chamado de miocárdio. Esse músculo é responsável pela contração do coração e a inflamação prejudica a ação de bombeamento do sangue provocando arritmias e insuficiência cardíaca. Seu tempo de duração depende da causa da inflamação e do estado de saúde do paciente.");
      expect(a2, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando ask (ingles)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('en')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: QuestionsPage(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();

      Finder pageTitle = find.text("Questions & Answers");
      expect(pageTitle, findsOneWidget);

      // Busca e verificando perguntas
      Finder q1 = find.text("Qual a diferença entre miocardia e miocardite?");
      expect(q1, findsOneWidget);
      Finder q2 = find.text("O que é miocardite?");
      expect(q2, findsOneWidget);
      Finder q3 = find.text("O que miocardiopatia isquêmica?");
      expect(q3, findsOneWidget);
      Finder q4 = find.text("O que causa a inflamação no miocárdio?");
      expect(q4, findsOneWidget);

      //abre card de resposta
      await tester.tap(q2);
      await tester.pumpAndSettle();

      //verifica texto da resposta
      Finder a2 = find.text("É a inflamação do músculo do coração, chamado de miocárdio. Esse músculo é responsável pela contração do coração e a inflamação prejudica a ação de bombeamento do sangue provocando arritmias e insuficiência cardíaca. Seu tempo de duração depende da causa da inflamação e do estado de saúde do paciente.");
      expect(a2, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando reminder (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('pt')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: ReminderPage(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Lembretes');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando reminder (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('en')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: ReminderPage(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Reminder');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });

  testWidgets('Testando info (portugues)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('pt')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Info(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Informações');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });
  testWidgets('Testando info (ingles)', (WidgetTester tester) async {
    await tester.runAsync(() async {
      Widget widget = MediaQuery(
                                  data: MediaQueryData(),
                                  child: MaterialApp(
                                    localizationsDelegates: [
                                      LocalizationDelegate(isTest: true, testLocale : Locale('en')), 
                                      GlobalMaterialLocalizations.delegate, 
                                      GlobalWidgetsLocalizations.delegate,
                                    ],
                                    home: Info(),
                                  ),
                                );
      // constroi o widget
      await tester.pumpWidget(widget);
      await tester.idle();
      await tester.pumpAndSettle();
    
      // Busca e verificando titulo
      Finder pageTitle = find.text('Information');
      expect(pageTitle, findsOneWidget);
      print("-------------------------------- APROVADO");
    });
  });
}
