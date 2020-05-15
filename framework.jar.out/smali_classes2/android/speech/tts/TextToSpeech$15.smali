.class Landroid/speech/tts/TextToSpeech$15;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action<",
        "Landroid/speech/tts/Voice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    .line 1729
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$15;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 11
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "defaultLanguage":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 1739
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 1740
    .local v2, "language":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-object v3, v0, v4

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 1741
    .local v3, "country":Ljava/lang/String;
    :goto_0
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v5

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 1744
    .local v4, "variant":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1745
    .local v5, "result":I
    if-gez v5, :cond_3

    .line 1747
    return-object v1

    .line 1751
    :cond_3
    invoke-interface {p1, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1752
    .local v6, "voiceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1753
    return-object v1

    .line 1757
    :cond_4
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v7

    .line 1758
    .local v7, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v7, :cond_5

    .line 1759
    return-object v1

    .line 1761
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/speech/tts/Voice;

    .line 1762
    .local v9, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1763
    return-object v9

    .line 1765
    .end local v9    # "voice":Landroid/speech/tts/Voice;
    :cond_6
    goto :goto_2

    .line 1766
    :cond_7
    return-object v1

    .line 1736
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    .end local v5    # "result":I
    .end local v6    # "voiceName":Ljava/lang/String;
    .end local v7    # "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :cond_8
    :goto_3
    const-string v2, "TextToSpeech"

    const-string/jumbo v3, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-object v1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1729
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$15;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object p1

    return-object p1
.end method
