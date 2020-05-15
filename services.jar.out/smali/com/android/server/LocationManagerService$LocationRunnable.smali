.class Lcom/android/server/LocationManagerService$LocationRunnable;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationRunnable"
.end annotation


# static fields
.field static final CMD_HIGH_POWER_REQUEST_CHANGED:I = 0x1

.field static final CMD_PROVIDERS_CHANGED:I = 0x2


# instance fields
.field private mCmd:I

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .param p2, "cmd"    # I

    .line 3836
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationRunnable;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3837
    iput p2, p0, Lcom/android/server/LocationManagerService$LocationRunnable;->mCmd:I

    .line 3838
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3841
    iget v0, p0, Lcom/android/server/LocationManagerService$LocationRunnable;->mCmd:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3846
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationRunnable;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)V

    .line 3847
    goto :goto_0

    .line 3843
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationRunnable;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)V

    .line 3844
    nop

    .line 3851
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
