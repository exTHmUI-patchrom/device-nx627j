.class public final Landroid/view/textclassifier/TextSelection$Request$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDarkLaunchAllowed:Z

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private final mStartIndex:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    .line 263
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 264
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    .line 265
    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    .line 266
    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection$Request;
    .locals 8

    .line 303
    new-instance v7, Landroid/view/textclassifier/TextSelection$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-boolean v5, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZLandroid/view/textclassifier/TextSelection$1;)V

    return-object v7
.end method

.method public setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .locals 0
    .param p1, "allowed"    # Z

    .line 294
    iput-boolean p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    .line 295
    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .locals 0
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 277
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 278
    return-object p0
.end method
