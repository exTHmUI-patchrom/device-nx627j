.class Lcn/nubia/server/presssensor/PressGestureMutex$5;
.super Ljava/lang/Object;
.source "PressGestureMutex.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureMutex;->actionPerformedInner(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 151
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    iput-object p2, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$802(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->val$className:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$902(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$5;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$1000(Lcn/nubia/server/presssensor/PressGestureMutex;)V

    .line 156
    return-void
.end method
