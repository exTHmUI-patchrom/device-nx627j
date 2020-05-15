.class public final Lcom/android/server/wm/AppTransitionProto;
.super Ljava/lang/Object;
.source "AppTransitionProto.java"


# static fields
.field public static final APP_STATE_IDLE:I = 0x0

.field public static final APP_STATE_READY:I = 0x1

.field public static final APP_STATE_RUNNING:I = 0x2

.field public static final APP_STATE_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_STATE:J = 0x10e00000001L

.field public static final LAST_USED_APP_TRANSITION:J = 0x10e00000002L

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

.field public static final TRANSIT_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final TRANSIT_KEYGUARD_OCCLUDE:I = 0x16

.field public static final TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE:I = 0x19

.field public static final TRANSIT_TRANSLUCENT_ACTIVITY_OPEN:I = 0x18

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
