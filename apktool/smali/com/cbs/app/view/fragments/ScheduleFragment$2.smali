.class final Lcom/cbs/app/view/fragments/ScheduleFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ScheduleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ScheduleFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$2;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->h:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->h:Ljava/lang/String;

    .line 81
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    .line 84
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->getTonightResponse()Lcom/cbs/app/view/model/rest/TonightResponse;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/TonightResponse;->getTonightEpisodes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment$2;->a:Lcom/cbs/app/view/fragments/ScheduleFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->j:Z

    .line 90
    :cond_1
    return-void
.end method
