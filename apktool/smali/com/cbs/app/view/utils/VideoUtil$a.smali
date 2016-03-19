.class final Lcom/cbs/app/view/utils/VideoUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/NielsenDialogHelper$VideoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/utils/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iput-object p1, p0, Lcom/cbs/app/view/utils/VideoUtil$a;->a:Landroid/content/Context;

    .line 1375
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1380
    return-void
.end method
