.class Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;
.super Landroid/os/AsyncTask;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshAvailabiltyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 685
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private internalGetInitialAvailability()I
    .locals 4

    .line 718
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 721
    monitor-exit v0

    return v2

    .line 723
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_start_1
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 728
    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnHotwordDetector"

    const-string v3, "RemoteException in getDspProperties!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    .line 734
    const/4 v1, -0x2

    return v1

    .line 737
    :cond_1
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v1

    if-nez v1, :cond_2

    .line 738
    const/4 v1, -0x1

    return v1

    .line 740
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 723
    .end local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private internalGetIsEnrolled(ILjava/util/Locale;)Z
    .locals 3
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 749
    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "RemoteException in listRegisteredKeyphraseSoundModels!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 685
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 689
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetInitialAvailability()I

    move-result v0

    .line 690
    .local v0, "availability":I
    const/4 v1, 0x0

    .line 692
    .local v1, "enrolled":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 695
    :cond_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$500(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetIsEnrolled(ILjava/util/Locale;)Z

    move-result v1

    .line 696
    if-nez v1, :cond_1

    .line 697
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    :cond_1
    const/4 v0, 0x2

    .line 703
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 708
    :try_start_0
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$202(Landroid/service/voice/AlwaysOnHotwordDetector;I)I

    .line 709
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$600(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    .line 710
    monitor-exit v2

    .line 711
    const/4 v2, 0x0

    return-object v2

    .line 710
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
