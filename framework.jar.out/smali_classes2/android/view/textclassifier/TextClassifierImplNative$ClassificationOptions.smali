.class public final Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassificationOptions"
.end annotation


# instance fields
.field private final mLocales:Ljava/lang/String;

.field private final mReferenceTimeMsUtc:J

.field private final mReferenceTimezone:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceTimeMsUtc"    # J
    .param p3, "referenceTimezone"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mReferenceTimeMsUtc:J

    .line 243
    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mReferenceTimezone:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mLocales:Ljava/lang/String;

    .line 245
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mLocales:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceTimeMsUtc()J
    .locals 2

    .line 248
    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mReferenceTimeMsUtc:J

    return-wide v0
.end method

.method public getReferenceTimezone()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationOptions;->mReferenceTimezone:Ljava/lang/String;

    return-object v0
.end method
