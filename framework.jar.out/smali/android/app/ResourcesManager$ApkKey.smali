.class Landroid/app/ResourcesManager$ApkKey;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkKey"
.end annotation


# instance fields
.field public final overlay:Z

.field public final path:Ljava/lang/String;

.field public final sharedLib:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sharedLib"    # Z
    .param p3, "overlay"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    .line 106
    iput-boolean p2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    .line 107
    iput-boolean p3, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    .line 108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 121
    instance-of v0, p1, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    return v1

    .line 124
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager$ApkKey;

    .line 125
    .local v0, "other":Landroid/app/ResourcesManager$ApkKey;
    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 115
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
