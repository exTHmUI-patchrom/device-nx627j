.class Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagePairCount"
.end annotation


# instance fields
.field final languageCode:I

.field final septetCounts:[I

.field final unencodableCounts:[I


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "code"    # I

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .line 1106
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$000()I

    move-result v0

    .line 1107
    .local v0, "maxSingleShiftCode":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .line 1108
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .line 1111
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "tableOffset":I
    :goto_0
    const/4 v3, -0x1

    if-gt v1, v0, :cond_1

    .line 1112
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$100()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v1, :cond_0

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v4, v1

    .line 1111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    .end local v1    # "i":I
    .end local v2    # "tableOffset":I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-lt v0, v1, :cond_2

    .line 1122
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    goto :goto_2

    .line 1123
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1124
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    .line 1126
    :cond_3
    :goto_2
    return-void
.end method
