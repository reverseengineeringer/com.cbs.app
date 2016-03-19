.class final Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/VideoData;

.field final synthetic b:Lcom/cbs/app/view/NavigationActivity;

.field final synthetic c:Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/NavigationActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->c:Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;

    iput-object p2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->a:Lcom/cbs/app/view/model/VideoData;

    iput-object p3, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->b:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->b:Lcom/cbs/app/view/NavigationActivity;

    iget-object v2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1$1;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1, v0, v2}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/NavigationActivity;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;)V

    .line 99
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
