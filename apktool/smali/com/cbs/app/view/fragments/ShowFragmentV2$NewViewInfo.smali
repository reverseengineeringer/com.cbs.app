.class public Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewViewInfo"
.end annotation


# instance fields
.field public a:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field public b:Lcom/cbs/app/view/model/ShowConfig;

.field public c:Lcom/cbs/app/view/model/Show;

.field public d:[Landroid/os/Parcelable;

.field public e:[Landroid/os/Parcelable;

.field public f:[Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1987
    new-instance v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/model/ShowItem;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->a:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 1988
    return-void
.end method
