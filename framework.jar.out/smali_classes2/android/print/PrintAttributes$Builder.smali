.class public final Landroid/print/PrintAttributes$Builder;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAttributes:Landroid/print/PrintAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    iput-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintAttributes;
    .locals 1

    .line 1464
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public setColorMode(I)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "colorMode"    # I

    .line 1439
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 1440
    return-object p0
.end method

.method public setDuplexMode(I)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "duplexMode"    # I

    .line 1454
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 1455
    return-object p0
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .line 1402
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 1403
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .line 1425
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 1426
    return-object p0
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .line 1413
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 1414
    return-object p0
.end method
