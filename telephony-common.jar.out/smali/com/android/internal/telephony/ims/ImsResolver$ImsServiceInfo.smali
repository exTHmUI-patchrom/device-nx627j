.class public Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsServiceInfo"
.end annotation


# instance fields
.field public controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field public featureFromMetadata:Z

.field private final mNumSlots:I

.field private final mSupportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field public name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numSlots"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mNumSlots:I

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    .line 124
    return-void
.end method


# virtual methods
.method addFeatureForAllSlots(I)V
    .locals 3
    .param p1, "feature"    # I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mNumSlots:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    new-instance v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-direct {v2, v0, p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 147
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 149
    .local v2, "that":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    return v1

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v1, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 154
    :cond_5
    iget-object v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-nez v3, :cond_6

    goto :goto_1

    .line 153
    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 145
    .end local v2    # "that":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_7
    :goto_2
    return v1
.end method

.method public getSupportedFeatures()Ljava/util/HashSet;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 162
    .local v0, "result":I
    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    :cond_1
    add-int/2addr v2, v1

    .line 163
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method replaceFeatures(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "newFeatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string v1, "[ImsServiceInfo] name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", supportedFeatures=[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 173
    .local v2, "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .end local v2    # "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
