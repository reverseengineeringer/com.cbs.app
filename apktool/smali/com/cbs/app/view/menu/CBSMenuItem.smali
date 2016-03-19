.class public Lcom/cbs/app/view/menu/CBSMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v0}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/menu/CBSMenuItem;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/cbs/app/view/menu/CBSMenuItem;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/cbs/app/view/menu/CBSMenuItem;->c:Ljava/lang/Class;

    .line 37
    return-void
.end method
