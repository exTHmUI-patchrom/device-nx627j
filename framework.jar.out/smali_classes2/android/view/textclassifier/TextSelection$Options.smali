.class public final Landroid/view/textclassifier/TextSelection$Options;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private mDarkLaunchAllowed:Z

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private final mRequest:Landroid/view/textclassifier/TextSelection$Request;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/textclassifier/TextSelection$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V

    .line 394
    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 399
    iput-object p2, p0, Landroid/view/textclassifier/TextSelection$Options;->mRequest:Landroid/view/textclassifier/TextSelection$Request;

    .line 400
    return-void
.end method

.method public static from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection$Options;
    .locals 2
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 404
    new-instance v0, Landroid/view/textclassifier/TextSelection$Options;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextSelection$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;)V

    .line 405
    .local v0, "options":Landroid/view/textclassifier/TextSelection$Options;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Options;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Options;

    .line 406
    return-object v0
.end method


# virtual methods
.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getRequest()Landroid/view/textclassifier/TextSelection$Request;
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mRequest:Landroid/view/textclassifier/TextSelection$Request;

    return-object v0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Options;
    .locals 0
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 411
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Options;->mDefaultLocales:Landroid/os/LocaleList;

    .line 412
    return-object p0
.end method
