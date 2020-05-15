.class final Landroid/app/ActivityThread$DumpHeapData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpHeapData"
.end annotation


# instance fields
.field fd:Landroid/os/ParcelFileDescriptor;

.field public mallocInfo:Z

.field public managed:Z

.field path:Ljava/lang/String;

.field public runGc:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
