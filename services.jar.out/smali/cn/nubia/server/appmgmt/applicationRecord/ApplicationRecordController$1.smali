.class Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$1;
.super Ljava/lang/Object;
.source "ApplicationRecordController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->sortArraylist(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    .line 266
    iput-object p1, p0, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$1;->this$0:Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;)I
    .locals 7
    .param p1, "lhs"    # Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;
    .param p2, "rhs"    # Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    .line 269
    invoke-virtual {p2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v0

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 270
    invoke-virtual {p2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 271
    return v2

    .line 272
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_1
    return v1

    .line 277
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v3

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;->getCount()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 278
    return v2

    .line 280
    :cond_3
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 266
    check-cast p1, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    check-cast p2, Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController$1;->compare(Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;Lcn/nubia/server/appmgmt/applicationRecord/BaseApplicationRecord;)I

    move-result p1

    return p1
.end method
