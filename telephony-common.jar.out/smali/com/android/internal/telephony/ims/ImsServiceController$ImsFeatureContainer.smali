.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsFeatureContainer"
.end annotation


# instance fields
.field public featureType:I

.field private mBinder:Landroid/os/IInterface;

.field public slotId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;IILandroid/os/IInterface;)V
    .locals 0
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I
    .param p4, "binder"    # Landroid/os/IInterface;

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    .line 235
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    .line 236
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    .line 237
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 247
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 251
    .local v2, "that":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    iget v4, v2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-eq v3, v4, :cond_2

    return v1

    .line 252
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    iget v4, v2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-eq v3, v4, :cond_3

    return v1

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    iget-object v1, v2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 247
    .end local v2    # "that":Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 258
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    .line 259
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    add-int/2addr v2, v3

    .line 260
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 261
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public resolve(Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 241
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method
