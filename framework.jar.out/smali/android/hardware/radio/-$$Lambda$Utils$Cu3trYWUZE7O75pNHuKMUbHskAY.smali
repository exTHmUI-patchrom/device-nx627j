.class public final synthetic Landroid/hardware/radio/-$$Lambda$Utils$Cu3trYWUZE7O75pNHuKMUbHskAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$Utils$Cu3trYWUZE7O75pNHuKMUbHskAY;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$Utils$Cu3trYWUZE7O75pNHuKMUbHskAY;->f$0:Landroid/os/Parcel;

    check-cast p1, Landroid/os/Parcelable;

    invoke-static {v0, p1}, Landroid/hardware/radio/Utils;->lambda$writeSet$0(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return-void
.end method
