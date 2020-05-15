.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppSummary"
.end annotation


# static fields
.field public static final CODE_PSS_KB:J = 0x10500000003L

.field public static final GRAPHICS_PSS_KB:J = 0x10500000005L

.field public static final JAVA_HEAP_PSS_KB:J = 0x10500000001L

.field public static final NATIVE_HEAP_PSS_KB:J = 0x10500000002L

.field public static final PRIVATE_OTHER_PSS_KB:J = 0x10500000006L

.field public static final STACK_PSS_KB:J = 0x10500000004L

.field public static final SYSTEM_PSS_KB:J = 0x10500000007L

.field public static final TOTAL_SWAP_KB:J = 0x10500000009L

.field public static final TOTAL_SWAP_PSS:J = 0x10500000008L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;->this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
