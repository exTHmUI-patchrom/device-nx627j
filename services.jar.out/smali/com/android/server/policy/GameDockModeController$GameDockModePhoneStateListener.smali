.class final Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "GameDockModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GameDockModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameDockModePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameDockModeController;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GameDockModeController;Lcom/android/server/policy/GameDockModeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/GameDockModeController;
    .param p2, "x1"    # Lcom/android/server/policy/GameDockModeController$1;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 321
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$100(Lcom/android/server/policy/GameDockModeController;)V

    .line 331
    goto :goto_0

    .line 327
    :pswitch_1
    goto :goto_0

    .line 323
    :pswitch_2
    nop

    .line 337
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
