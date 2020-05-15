.class abstract Landroid/widget/RemoteViews$RuntimeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RuntimeAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RemoteViews$1;

    .line 470
    invoke-direct {p0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionTag()I
    .locals 1

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
