.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final TAG:Ljava/lang/String; = "DownloadDrmHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containingMime"    # Ljava/lang/String;

    .line 97
    move-object v0, p2

    .line 98
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 108
    :cond_0
    :goto_0
    goto :goto_1

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "DownloadDrmHelper"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 103
    :catch_1
    move-exception v2

    .line 104
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadDrmHelper"

    const-string v4, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 109
    :goto_1
    return-object v0
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .line 67
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimetype"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "result":Z
    if-eqz p0, :cond_1

    .line 46
    :try_start_0
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    const-string v2, ""

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 55
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DownloadDrmHelper"

    const-string v3, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DownloadDrmHelper"

    const-string v3, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    return v0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 75
    if-eqz p0, :cond_1

    .line 77
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_0
    const-string v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
