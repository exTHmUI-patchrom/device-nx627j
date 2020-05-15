.class Landroid/speech/tts/TextToSpeech$13;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$voice:Landroid/speech/tts/Voice;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    .line 1644
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    .line 1648
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1649
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "voiceName"

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v1, ""

    .line 1655
    .local v1, "language":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1659
    goto :goto_0

    .line 1656
    :catch_0
    move-exception v2

    .line 1657
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string v3, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    .line 1658
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1657
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1661
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :goto_0
    const-string v2, ""

    .line 1663
    .local v2, "country":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1667
    goto :goto_1

    .line 1664
    :catch_1
    move-exception v3

    .line 1665
    .local v3, "e":Ljava/util/MissingResourceException;
    const-string v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    .line 1666
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1665
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :goto_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "country"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$13;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "variant"

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$13;->val$voice:Landroid/speech/tts/Voice;

    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$13;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
