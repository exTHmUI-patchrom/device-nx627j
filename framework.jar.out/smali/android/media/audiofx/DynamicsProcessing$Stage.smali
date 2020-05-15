.class public Landroid/media/audiofx/DynamicsProcessing$Stage;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mInUse:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    .line 321
    iput-boolean p2, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 322
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return v0
.end method

.method public isInUse()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 336
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " Stage InUse: %b\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const-string v1, " Stage Enabled: %b\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
