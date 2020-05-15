.class public final Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationOptions"
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

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-wide p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimeMsUtc:J

    .line 268
    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimezone:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mLocales:Ljava/lang/String;

    .line 270
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mLocales:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceTimeMsUtc()J
    .locals 2

    .line 273
    iget-wide v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimeMsUtc:J

    return-wide v0
.end method

.method public getReferenceTimezone()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotationOptions;->mReferenceTimezone:Ljava/lang/String;

    return-object v0
.end method
