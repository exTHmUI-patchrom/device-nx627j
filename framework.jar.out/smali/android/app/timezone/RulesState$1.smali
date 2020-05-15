.class Landroid/app/timezone/RulesState$1;
.super Ljava/lang/Object;
.source "RulesState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/RulesState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timezone/RulesState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    invoke-static {p1}, Landroid/app/timezone/RulesState;->access$000(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/timezone/RulesState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/timezone/RulesState;
    .locals 1
    .param p1, "size"    # I

    .line 192
    new-array v0, p1, [Landroid/app/timezone/RulesState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/timezone/RulesState$1;->newArray(I)[Landroid/app/timezone/RulesState;

    move-result-object p1

    return-object p1
.end method
