.class public Landroid/content/res/AssetManager$Builder;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mUserApkAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .locals 1
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 120
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public build()Landroid/content/res/AssetManager;
    .locals 8

    .line 126
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 128
    .local v0, "systemApkAssets":[Landroid/content/res/ApkAssets;
    array-length v1, v0

    iget-object v2, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    .local v1, "totalApkAssetCount":I
    new-array v2, v1, [Landroid/content/res/ApkAssets;

    .line 131
    .local v2, "apkAssets":[Landroid/content/res/ApkAssets;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 134
    .local v3, "userApkAssetCount":I
    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 135
    array-length v6, v0

    add-int/2addr v6, v5

    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    aput-object v7, v2, v6

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Landroid/content/res/AssetManager;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager$1;)V

    .line 141
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v5, v2}, Landroid/content/res/AssetManager;->access$102(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)[Landroid/content/res/ApkAssets;

    .line 142
    invoke-static {v5}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v4}, Landroid/content/res/AssetManager;->access$300(J[Landroid/content/res/ApkAssets;Z)V

    .line 144
    return-object v5
.end method
