.class public Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup$BackupScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathWithRequiredFlags"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mRequiredFlags:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "requiredFlags"    # I

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    .line 328
    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    .line 329
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredFlags()I
    .locals 1

    .line 336
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    return v0
.end method
