.class Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;
.super Lnubia/os/presssensor/IPressListener$Stub;
.source "PressSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/presssensor/PressSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PressListenerWrapper"
.end annotation


# instance fields
.field private mPressListener:Lnubia/os/presssensor/PressSensorManager$PressListener;


# direct methods
.method public constructor <init>(Lnubia/os/presssensor/PressSensorManager$PressListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$PressListener;

    .line 156
    invoke-direct {p0}, Lnubia/os/presssensor/IPressListener$Stub;-><init>()V

    .line 157
    iput-object p1, p0, Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;->mPressListener:Lnubia/os/presssensor/PressSensorManager$PressListener;

    .line 158
    return-void
.end method


# virtual methods
.method public onPressChanged(JII)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "pressValues"    # I
    .param p4, "pressMask"    # I

    .line 163
    const/16 v0, 0x152

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    .line 171
    const-string v0, "PressSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;->mPressListener:Lnubia/os/presssensor/PressSensorManager$PressListener;

    new-instance v1, Lnubia/os/presssensor/PressEvent;

    invoke-direct {v1, p4, p3, p1, p2}, Lnubia/os/presssensor/PressEvent;-><init>(IIJ)V

    invoke-interface {v0, v1}, Lnubia/os/presssensor/PressSensorManager$PressListener;->onPressChanged(Lnubia/os/presssensor/PressEvent;)V

    .line 169
    nop

    .line 175
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
