.class Landroid/widget/RemoteViews$MethodKey;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodKey"
.end annotation


# instance fields
.field public methodName:Ljava/lang/String;

.field public paramClass:Ljava/lang/Class;

.field public targetClass:Ljava/lang/Class;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 302
    instance-of v0, p1, Landroid/widget/RemoteViews$MethodKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    return v1

    .line 305
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RemoteViews$MethodKey;

    .line 306
    .local v0, "p":Landroid/widget/RemoteViews$MethodKey;
    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    .line 307
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 308
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 306
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 313
    iget-object v0, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 314
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 313
    return v0
.end method

.method public set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 318
    iput-object p1, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    .line 319
    iput-object p2, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    .line 320
    iput-object p3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 321
    return-void
.end method
