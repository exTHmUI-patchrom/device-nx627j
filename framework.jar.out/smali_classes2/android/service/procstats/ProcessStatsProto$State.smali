.class public final Landroid/service/procstats/ProcessStatsProto$State;
.super Ljava/lang/Object;
.source "ProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/ProcessStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field public static final BACKUP:I = 0x5

.field public static final CACHED_ACTIVITY:I = 0xc

.field public static final CACHED_ACTIVITY_CLIENT:I = 0xd

.field public static final CACHED_EMPTY:I = 0xe

.field public static final CRITICAL:I = 0x4

.field public static final DURATION_MS:J = 0x10300000004L

.field public static final HEAVY_WEIGHT:I = 0x9

.field public static final HOME:I = 0xa

.field public static final IMPORTANT_BACKGROUND:I = 0x4

.field public static final IMPORTANT_FOREGROUND:I = 0x3

.field public static final LAST_ACTIVITY:I = 0xb

.field public static final LOW:I = 0x3

.field public static final MEMORY_STATE:J = 0x10e00000002L

.field public static final MEMORY_UNKNOWN:I = 0x0

.field public static final MODERATE:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final OFF:I = 0x1

.field public static final ON:I = 0x2

.field public static final PERSISTENT:I = 0x1

.field public static final PROCESS_STATE:J = 0x10e00000003L

.field public static final PROCESS_UNKNOWN:I = 0x0

.field public static final PSS:J = 0x10b00000006L

.field public static final RECEIVER:I = 0x8

.field public static final RSS:J = 0x10b00000008L

.field public static final SAMPLE_SIZE:J = 0x10500000005L

.field public static final SCREEN_STATE:J = 0x10e00000001L

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final SERVICE:I = 0x6

.field public static final SERVICE_RESTARTING:I = 0x7

.field public static final TOP:I = 0x2

.field public static final USS:J = 0x10b00000007L


# instance fields
.field final synthetic this$0:Landroid/service/procstats/ProcessStatsProto;


# direct methods
.method public constructor <init>(Landroid/service/procstats/ProcessStatsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/procstats/ProcessStatsProto;

    .line 25
    iput-object p1, p0, Landroid/service/procstats/ProcessStatsProto$State;->this$0:Landroid/service/procstats/ProcessStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
