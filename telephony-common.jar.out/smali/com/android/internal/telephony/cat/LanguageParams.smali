.class Lcom/android/internal/telephony/cat/LanguageParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "lang"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 158
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageParams;->mLanguage:Ljava/lang/String;

    .line 159
    return-void
.end method
