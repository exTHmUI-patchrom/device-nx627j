.class final Landroid/view/AccessibilityInteractionController$MessageHolder;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHolder"
.end annotation


# instance fields
.field final mInterrogatingPid:I

.field final mInterrogatingTid:J

.field final mMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;IJ)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    .line 1386
    iput p2, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    .line 1387
    iput-wide p3, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    .line 1388
    return-void
.end method
