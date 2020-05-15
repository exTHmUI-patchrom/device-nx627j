.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Dump;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Dump"
.end annotation


# static fields
.field public static final FILE:J = 0x10900000002L

.field public static final PID:J = 0x10500000003L

.field public static final PROC_NAME:J = 0x10900000001L

.field public static final UID:J = 0x10500000004L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;

    .line 160
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Dump;->this$1:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
