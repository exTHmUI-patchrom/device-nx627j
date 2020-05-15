.class public final Landroid/media/MediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .line 913
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mData:[B

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mData:[B

    return-object v0

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProvisionRequest is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 2

    .line 930
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mDefaultUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mDefaultUrl:Ljava/lang/String;

    return-object v0

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProvisionRequest is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
