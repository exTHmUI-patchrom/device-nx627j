.class public Landroid/appwidget/PendingHostUpdate;
.super Ljava/lang/Object;
.source "PendingHostUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_PROVIDER_CHANGED:I = 0x1

.field static final TYPE_VIEWS_UPDATE:I = 0x0

.field static final TYPE_VIEW_DATA_CHANGED:I = 0x2


# instance fields
.field final appWidgetId:I

.field final type:I

.field viewId:I

.field views:Landroid/widget/RemoteViews;

.field widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/appwidget/PendingHostUpdate$1;

    invoke-direct {v0}, Landroid/appwidget/PendingHostUpdate$1;-><init>()V

    sput-object v0, Landroid/appwidget/PendingHostUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "type"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 58
    iput p2, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 65
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 79
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/appwidget/PendingHostUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/appwidget/PendingHostUpdate$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/appwidget/PendingHostUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 45
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 46
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 47
    return-object v0
.end method

.method public static updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 39
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 40
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 41
    return-object v0
.end method

.method public static viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "viewId"    # I

    .line 51
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 52
    .local v0, "update":Landroid/appwidget/PendingHostUpdate;
    iput p1, v0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    .line 53
    return-object v0
.end method

.method private writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 96
    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 93
    nop

    .line 101
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
