.class public Lcom/cbs/app/view/fragments/ShowFragmentV2;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field private final A:Lcom/cbs/app/view/menu/DrawerStatusListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private G:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private H:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private I:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private J:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private K:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private L:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private M:Z

.field private final N:Lcom/cbs/app/view/BackButtonListener;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:I

.field m:I

.field public n:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private final o:Ljava/lang/Object;

.field private p:Z

.field private q:Lcom/cbs/app/view/LogoKeeper;

.field private r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/cbs/app/view/model/VideoData;

.field private y:Z

.field private z:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o:Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    .line 115
    iput v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    .line 116
    iput v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l:I

    .line 117
    iput v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m:I

    .line 146
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$1;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 174
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p:Z

    .line 176
    iput-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 177
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s:Z

    .line 178
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t:Z

    .line 180
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u:Z

    .line 181
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    .line 182
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    .line 183
    iput-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    .line 184
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->y:Z

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    .line 190
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->A:Lcom/cbs/app/view/menu/DrawerStatusListener;

    .line 208
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$14;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$14;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->B:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$15;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$15;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->C:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$16;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$16;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->D:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$17;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$17;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->E:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->F:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 267
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$19;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$19;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->G:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 295
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->H:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 323
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->I:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 354
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->J:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 395
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$4;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->K:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 411
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->L:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 432
    new-instance v0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->N:Lcom/cbs/app/view/BackButtonListener;

    .line 1977
    return-void
.end method

.method static synthetic A(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic B(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic C(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic D(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic F(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic G(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic H(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic I(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic J(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public static a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)Lcom/cbs/app/view/fragments/ShowFragmentV2;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "showItem"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    const-string v1, "isClassic"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    const-string v3, "Classic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    if-eqz p2, :cond_0

    .line 130
    const-string v1, "selectedVideo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const-string v1, "selectedVideoId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    .line 138
    const-string v1, "resumeMode"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "resumeTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    :cond_2
    new-instance v1, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;-><init>()V

    .line 142
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 143
    return-object v1
.end method

.method private static a([Lcom/cbs/app/view/model/Asset;)Lcom/cbs/app/view/model/Asset;
    .locals 6

    .prologue
    .line 801
    const/4 v1, 0x0

    .line 802
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 803
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "assets filepath: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "asset feature: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFeature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFeature()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFeature()Ljava/lang/String;

    move-result-object v4

    const-string v5, "show_info_background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 814
    :goto_1
    return-object v0

    .line 803
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;
    .locals 5

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1097
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_1

    .line 1099
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowBlockNavigation;

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getNavigationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getNavigationType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getNavigationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1415
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1419
    const-string v1, "webcheckbox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1420
    if-eqz v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 1422
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    const-string v1, "showidselected"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1425
    const-string v1, "webtabspinnerposition"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tabSelectedPosition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1427
    if-ne v1, p1, :cond_1

    .line 1429
    const-string v1, "webtablabel"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    const-string v2, "weburltext"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    new-instance v2, Lcom/cbs/app/view/model/ShowBlockNavigation;

    invoke-direct {v2}, Lcom/cbs/app/view/model/ShowBlockNavigation;-><init>()V

    .line 1433
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->setUrl(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v2, v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->setLabel(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v2, p2}, Lcom/cbs/app/view/model/ShowBlockNavigation;->setNavigationType(Ljava/lang/String;)V

    .line 1437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_3

    .line 1442
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowBlockNavigation;

    .line 1443
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getNavigationType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getNavigationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1446
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "showBlockNavigation"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/ShowBlockNavigation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1462
    :cond_1
    return-void

    .line 1451
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1455
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/model/ShowItem;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/model/ShowItem;->setBundle(Landroid/os/Bundle;)V

    .line 494
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1339
    const v0, 0x7f0f01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1340
    if-eqz v0, :cond_0

    .line 1342
    const/4 v1, 0x2

    const-string v2, "cast"

    invoke-direct {p0, v1, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(ILjava/lang/String;)V

    .line 1345
    const-string v1, "cast"

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v1

    .line 1346
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "hasCast"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1349
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    if-eqz v1, :cond_2

    .line 1355
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const v4, 0x7f0f0242

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    .line 9192
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v1

    .line 9194
    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    .line 9195
    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    sub-int v2, v0, v2

    .line 9197
    if-eqz v1, :cond_2

    .line 9198
    if-gtz v2, :cond_0

    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    if-lez v0, :cond_2

    .line 9199
    :cond_0
    const v0, 0x7f0f0241

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 9200
    if-eqz v0, :cond_2

    .line 9201
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9202
    new-instance v3, Lcom/cbs/app/view/fragments/ShowFragmentV2$13;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$13;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9216
    if-eqz v2, :cond_3

    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    if-eqz v0, :cond_3

    .line 9217
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Full Episode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Free"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9220
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    .line 9221
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Full Episode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Free"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9222
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 9223
    invoke-virtual {v4, v2, v10, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9224
    if-eqz v0, :cond_1

    .line 9225
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9227
    :cond_1
    const v0, 0x7f0f0245

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with CBS All Access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9229
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 9230
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with CBS All Access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9231
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 9232
    invoke-virtual {v2, v3, v7, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9233
    if-eqz v0, :cond_2

    .line 9234
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9252
    :cond_2
    :goto_0
    return-void

    .line 9236
    :cond_3
    if-nez v2, :cond_4

    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    if-eqz v0, :cond_4

    .line 9237
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9238
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9239
    const v0, 0x7f0f0243

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9240
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 9242
    const v0, 0x7f0f0245

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with CBS All Access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9244
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 9245
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with CBS All Access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9246
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 9247
    invoke-virtual {v2, v3, v7, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9248
    if-eqz v0, :cond_2

    .line 9249
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9252
    :cond_4
    if-eqz v2, :cond_2

    iget v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    if-nez v0, :cond_2

    .line 9253
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9254
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Full Episode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Free"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9256
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    .line 9257
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Full Episode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Free"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9258
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 9259
    invoke-virtual {v4, v2, v10, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9260
    if-eqz v0, :cond_5

    .line 9261
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9263
    :cond_5
    const v0, 0x7f0f0243

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9264
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 9265
    const v0, 0x7f0f0244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 9266
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method private b(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    const v0, 0x7f0f01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1364
    if-eqz v0, :cond_0

    .line 1366
    const/4 v1, 0x1

    const-string v2, "photos"

    invoke-direct {p0, v1, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(ILjava/lang/String;)V

    .line 1368
    const-string v1, "photos"

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v1

    .line 1369
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "hasPhotos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1372
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    if-eqz v1, :cond_2

    .line 1378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "photo url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1523
    .line 8487
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 8488
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 8489
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 8490
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 8491
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 1526
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method private c(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1387
    const v0, 0x7f0f01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1388
    const v1, 0x7f0f01d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1389
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1391
    const/4 v0, 0x0

    const-string v2, "video"

    invoke-direct {p0, v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(ILjava/lang/String;)V

    .line 1393
    const-string v0, "video"

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v0

    .line 1395
    const-string v2, "photos"

    invoke-direct {p0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "hasPhotos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cast"

    invoke-direct {p0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "hasCast"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1399
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    if-eqz v0, :cond_2

    .line 1405
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    .line 1870
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1871
    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1874
    invoke-static {p1}, Lcom/cbs/app/view/LogoKeeper;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1876
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    return p1
.end method

.method private d(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1466
    const v0, 0x7f0f01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1467
    const v1, 0x7f0f01de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1468
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1470
    const/4 v0, 0x3

    const-string v2, "connect"

    invoke-direct {p0, v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(ILjava/lang/String;)V

    .line 1472
    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    const-wide/16 v4, 0x163c

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1475
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_1
    :goto_0
    return-void

    .line 1477
    :cond_2
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manageConnectButton: Live : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j()V

    return-void
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    return p1
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p()V

    return-void
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r()V

    return-void
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->q()V

    return-void
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s()V

    return-void
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 711
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 712
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 713
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showConfig"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/ShowConfig;

    .line 714
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 717
    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 718
    const/4 v3, 0x0

    .line 719
    if-eqz v2, :cond_2

    .line 720
    const v4, 0x7f0f02dd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 721
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 722
    check-cast v2, Landroid/widget/Button;

    .line 726
    :goto_0
    if-eqz v2, :cond_0

    .line 727
    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    if-eqz v3, :cond_1

    .line 728
    new-instance v3, Lcom/cbs/app/view/fragments/ShowFragmentV2$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2$7;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    :cond_0
    :goto_1
    return-void

    .line 744
    :cond_1
    new-instance v3, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t:Z

    return v0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 769
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v3

    .line 771
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 4789
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4790
    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    .line 4791
    array-length v6, v4

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v0, v4, v1

    .line 4792
    instance-of v7, v0, Lcom/cbs/app/view/model/Asset;

    if-eqz v7, :cond_0

    .line 4793
    check-cast v0, Lcom/cbs/app/view/model/Asset;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4791
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4797
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/Asset;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    .line 772
    if-eqz v3, :cond_2

    .line 773
    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a([Lcom/cbs/app/view/model/Asset;)Lcom/cbs/app/view/model/Asset;

    move-result-object v1

    .line 774
    if-eqz v1, :cond_2

    .line 776
    const v0, 0x7f0f01e2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "asset view = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 779
    check-cast v0, Landroid/widget/ImageView;

    .line 781
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    invoke-virtual {v1}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 786
    :cond_2
    return-void
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    return v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1041
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "allDataLoaded"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1043
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1044
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 1046
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    .line 1047
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    .line 1048
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t:Z

    .line 1049
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u:Z

    .line 1051
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1052
    const-string v0, "show_item"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 1053
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1054
    const-string v1, "photos"

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1056
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    .line 1061
    :goto_0
    const-string v1, "cast"

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1063
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    .line 1069
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1070
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s:Z

    .line 1075
    :goto_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->G:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1077
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->H:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/cbs/app/service/ShowService;->c(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1079
    :cond_0
    return-void

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->I:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->e(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 1066
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->J:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->d(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_1

    .line 1072
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->F:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->c(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_2
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    return v0
.end method

.method private m()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/ShowBlockNavigation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "showBlockNavigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1083
    const/4 v0, 0x0

    .line 1084
    if-eqz v3, :cond_2

    array-length v1, v3

    if-lez v1, :cond_2

    .line 1085
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 1087
    instance-of v5, v0, Lcom/cbs/app/view/model/ShowBlockNavigation;

    if-eqz v5, :cond_0

    .line 1088
    check-cast v0, Lcom/cbs/app/view/model/ShowBlockNavigation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1092
    :cond_2
    return-object v0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u:Z

    return v0
.end method

.method private n()V
    .locals 8

    .prologue
    const v4, 0x7f0d00c4

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1137
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1139
    iput-boolean v7, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->y:Z

    .line 1141
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v:Z

    .line 1142
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->w:Z

    .line 1143
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t:Z

    .line 1144
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u:Z

    .line 6290
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v1

    .line 6292
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 6294
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show_item"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 6295
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Ljava/lang/String;)V

    .line 6296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showItem.showId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6298
    const v0, 0x7f0f01d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6300
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->tuneInTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6302
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6822
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v3

    .line 6823
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 6824
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/Show;

    .line 6825
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 6826
    const v2, 0x7f0f01e0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 6827
    const v4, 0x7f0f01e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6828
    if-eqz v3, :cond_0

    .line 6829
    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6831
    :cond_0
    if-eqz v2, :cond_1

    .line 6832
    new-instance v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$9;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$9;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6305
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k()V

    .line 6306
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "isClassic"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6307
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o()V

    .line 7529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showBottomFragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7531
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 7533
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "showCast"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7534
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showPhotos"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 7535
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "isClassic"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 7539
    if-eqz v0, :cond_c

    .line 7541
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h()V

    .line 1151
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d()V

    .line 1152
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j()V

    .line 1154
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_4

    .line 1156
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i:Ljava/lang/String;

    .line 1161
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1164
    :cond_5
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1165
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1166
    if-eqz v0, :cond_6

    .line 1167
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1174
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "allDataLoaded"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1179
    :cond_7
    return-void

    .line 6309
    :cond_8
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6313
    :cond_9
    const v2, 0x7f0f01d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6314
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6315
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "isClassic"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6317
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6318
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6324
    :goto_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6326
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 6327
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 6321
    :cond_a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6322
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 6330
    :cond_b
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 6331
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 7543
    :cond_c
    if-eqz v1, :cond_d

    .line 7545
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g()V

    goto/16 :goto_1

    .line 7550
    :cond_d
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    goto/16 :goto_1

    .line 1171
    :cond_e
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getAllAccessSeasonData()V

    goto :goto_2
.end method

.method static synthetic n(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1499
    if-eqz v0, :cond_1

    .line 1500
    const v1, 0x7f0f01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1501
    if-eqz v0, :cond_1

    .line 1502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/view/View;Ljava/util/List;)V

    .line 1504
    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Landroid/view/View;Ljava/util/List;)V

    .line 1505
    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Landroid/view/View;Ljava/util/List;)V

    .line 1506
    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d(Landroid/view/View;Ljava/util/List;)V

    .line 1508
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1509
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1512
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1513
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1517
    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s:Z

    return v0
.end method

.method private p()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1879
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1880
    if-eqz v0, :cond_3

    .line 1881
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1882
    const v2, 0x7f0f01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1883
    const v3, 0x7f0f01dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1884
    const v4, 0x7f0f01de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1885
    if-eqz v0, :cond_0

    .line 1886
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1888
    :cond_0
    if-eqz v1, :cond_1

    .line 1889
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1891
    :cond_1
    if-eqz v2, :cond_2

    .line 1892
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1894
    :cond_2
    if-eqz v3, :cond_3

    .line 1895
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1898
    :cond_3
    return-void
.end method

.method static synthetic p(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u:Z

    return v0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1901
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1902
    if-eqz v0, :cond_3

    .line 1903
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1904
    const v2, 0x7f0f01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1905
    const v3, 0x7f0f01dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1907
    const v4, 0x7f0f01de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1908
    if-eqz v0, :cond_0

    .line 1909
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1911
    :cond_0
    if-eqz v1, :cond_1

    .line 1912
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1914
    :cond_1
    if-eqz v2, :cond_2

    .line 1915
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1917
    :cond_2
    if-eqz v3, :cond_3

    .line 1918
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1921
    :cond_3
    return-void
.end method

.method static synthetic q(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p:Z

    return v0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1924
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1925
    if-eqz v0, :cond_3

    .line 1926
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1927
    const v2, 0x7f0f01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1928
    const v3, 0x7f0f01dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1929
    const v4, 0x7f0f01de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1930
    if-eqz v0, :cond_0

    .line 1931
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1933
    :cond_0
    if-eqz v1, :cond_1

    .line 1934
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1936
    :cond_1
    if-eqz v2, :cond_2

    .line 1937
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1939
    :cond_2
    if-eqz v3, :cond_3

    .line 1940
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1943
    :cond_3
    return-void
.end method

.method static synthetic r(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->M:Z

    return v0
.end method

.method private s()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1946
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1947
    if-eqz v0, :cond_3

    .line 1948
    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1949
    const v2, 0x7f0f01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1950
    const v3, 0x7f0f01dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1951
    const v4, 0x7f0f01de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_0

    .line 1953
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1955
    :cond_0
    if-eqz v1, :cond_1

    .line 1956
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1958
    :cond_1
    if-eqz v2, :cond_2

    .line 1959
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1961
    :cond_2
    if-eqz v3, :cond_3

    .line 1962
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1965
    :cond_3
    return-void
.end method

.method static synthetic s(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 98
    .line 9844
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v3

    .line 9845
    invoke-virtual {p0, v4}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 9846
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 9847
    if-eqz v3, :cond_0

    .line 9848
    const v1, 0x7f0f01e0

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9849
    const v2, 0x7f0f01e4

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9850
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9851
    const v0, 0x7f0f01e1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 9852
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 9853
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->M:Z

    .line 9854
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9855
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9856
    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9857
    :cond_0
    :goto_0
    return-void

    .line 9858
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->M:Z

    .line 9859
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9860
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9861
    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9868
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 9869
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 9870
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9872
    sget-object v1, Lcom/cbs/app/analytics/Action;->az:Lcom/cbs/app/analytics/Action;

    .line 9874
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9875
    const-string v3, "events"

    const-string v4, "event19"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9876
    const-string v3, "appState"

    const-string v4, "cbscom:Show Page"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9877
    const-string v3, "ShowTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9878
    const-string v3, "showId"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9879
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v4, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9880
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9881
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9882
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1968
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1969
    if-eqz v0, :cond_0

    .line 1970
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "selectedVideo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1971
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "selectedVideoId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1972
    const-string v1, "selectedVideo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1973
    const-string v1, "selectedVideoId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1975
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t()V

    return-void
.end method

.method static synthetic u(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic v(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic w(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic x(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic y(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic z(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const v4, 0x7f0b00e9

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1007
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "CBS"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Refresh"

    new-instance v3, Lcom/cbs/app/view/fragments/ShowFragmentV2$11;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$11;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Go to Home"

    new-instance v3, Lcom/cbs/app/view/fragments/ShowFragmentV2$10;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$10;-><init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1027
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1028
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1033
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/rest/ShowEndpointResponse;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 993
    .line 4978
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowShowResponse()Lcom/cbs/app/view/model/rest/ShowResponse;

    move-result-object v0

    .line 4979
    if-eqz v0, :cond_0

    .line 4981
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowResponse;->getShows()Ljava/util/List;

    move-result-object v0

    .line 4982
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4983
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showList not null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4984
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 4985
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4986
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "isClassic"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Classics"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4987
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5910
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowConfigResponse()Lcom/cbs/app/view/model/rest/ShowConfigResponse;

    move-result-object v0

    .line 5911
    if-eqz v0, :cond_1

    .line 5913
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->getConfiguration()Ljava/util/List;

    move-result-object v0

    .line 5914
    if-eqz v0, :cond_1

    .line 5915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configList not null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5916
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowConfig;

    .line 5917
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showConfig"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5923
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowAssetsResponse()Lcom/cbs/app/view/model/rest/ShowAssetsResponse;

    move-result-object v0

    .line 5924
    if-eqz v0, :cond_2

    .line 5926
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowAssetsResponse;->getAssets()Ljava/util/List;

    move-result-object v0

    .line 5927
    if-eqz v0, :cond_2

    .line 5928
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "assetList not null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5929
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cbs/app/view/model/Asset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    .line 5930
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "assets"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5936
    :cond_2
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowAssetResponseV2()Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;

    move-result-object v0

    .line 5937
    if-eqz v0, :cond_4

    .line 5938
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;->getShowAssets()Lcom/cbs/app/view/model/AssetFilePathMap;

    move-result-object v0

    .line 5939
    if-eqz v0, :cond_4

    .line 5941
    invoke-virtual {v0}, Lcom/cbs/app/view/model/AssetFilePathMap;->getFilepath_show_home_page_landscape_background()Ljava/lang/String;

    move-result-object v1

    .line 5942
    if-eqz v1, :cond_3

    .line 5945
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showAssets"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5951
    :cond_4
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getAssetCarouselResponse()Lcom/cbs/app/view/model/rest/AssetCarouselResponse;

    move-result-object v0

    .line 5952
    if-eqz v0, :cond_5

    .line 5954
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 5955
    if-eqz v0, :cond_5

    .line 5956
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "assetCarouselList not null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5957
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cbs/app/view/model/AssetCarouselItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 5958
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "carousel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5964
    :cond_5
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->getShowBlockNavigationResponse()Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;

    move-result-object v0

    .line 5965
    if-eqz v0, :cond_6

    .line 5967
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 5968
    if-eqz v0, :cond_6

    .line 5969
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showBlockNavigationlList not null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5970
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cbs/app/view/model/ShowBlockNavigation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowBlockNavigation;

    .line 5972
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showBlockNavigation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 999
    :cond_6
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l()V

    .line 1000
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;)V
    .locals 4

    .prologue
    .line 1111
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->getAvailableSeasons()Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;->getSeasonAvailabilityItems()Ljava/util/List;

    move-result-object v1

    .line 1115
    if-eqz v1, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "availabilityItems size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1118
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "showSeasons"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    .line 1122
    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getTotalCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j:I

    .line 1123
    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getPremiumCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k:I

    .line 1124
    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l:I

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getClipsCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l:I

    .line 1125
    iget v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m:I

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getDelayCount()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m:I

    goto :goto_0

    .line 1129
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1578
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1579
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 1580
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1581
    const-string v0, "fragment_show_videos"

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1582
    if-nez v0, :cond_8

    .line 1584
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p()V

    .line 1585
    invoke-virtual {p0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1589
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1591
    const-string v0, "show"

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "show"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1592
    const-string v0, "show_item"

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "show_item"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1593
    const-string v0, "isRefreshing"

    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p:Z

    .line 1597
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "selectedVideo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 1598
    if-eqz v0, :cond_0

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "selectedVideo: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v1, "selectedVideo"

    iget-object v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "selectedVideo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1601
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "selectedVideo"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "selectedVideo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/VideoData;

    .line 1605
    if-eqz v1, :cond_1

    .line 1606
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selectedVideo2: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "selectedVideoId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1610
    if-eqz v5, :cond_2

    .line 1612
    const-string v1, "selectedVideoId"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "selectedVideoId"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "selectedVideoId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_3

    .line 1621
    :cond_3
    const-string v1, "resumeTime"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "resumeTime"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1622
    const-string v1, "resumeMode"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "resumeMode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1623
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "resumeTime"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1624
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "resumeMode"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1626
    const-string v1, "assets"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "assets"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1627
    const-string v1, "carousel"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "carousel"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1628
    const-string v1, "configuration"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "showConfig"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1629
    const-string v1, "dontShowPlayer"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "dontShowPlayer"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1630
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v6, "dontShowPlayer"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1632
    const-string v1, "showSeasons"

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "showSeasons"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1634
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 1636
    const-string v1, "video"

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v1

    .line 1637
    if-eqz v1, :cond_4

    .line 1638
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getShowId()J

    move-result-wide v6

    .line 1639
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 1640
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 1641
    iget-object v10, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v10, v10, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    .line 1642
    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getInBoundDeepLinkUrl()Ljava/lang/String;

    move-result-object v1

    .line 1644
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bb url: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "livefeed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    if-eqz v8, :cond_7

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1646
    new-instance v2, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;-><init>()V

    .line 1647
    const-string v1, "pageUrl"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 1659
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v2, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v1, v2

    .line 1660
    check-cast v1, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v1, v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1663
    :cond_5
    invoke-virtual {v2, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1664
    const v1, 0x7f0f01df

    const-string v4, "fragment_show_videos"

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1665
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1669
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "dontShowPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1671
    if-nez v0, :cond_6

    if-nez v5, :cond_6

    .line 1672
    const-string v0, "fragment_show_videos"

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Ljava/lang/String;)V

    .line 1679
    :cond_6
    :goto_1
    return-void

    .line 1648
    :cond_7
    if-eqz v1, :cond_4

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1649
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1650
    const-string v1, "pageUrl"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v1, "showId"

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1652
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|tab|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1654
    const-string v7, "eVar6"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v7, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-static {v6, v7, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 8559
    :cond_8
    new-instance v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;-><init>()V

    .line 8560
    iget-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->a:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "show_item"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cbs/app/view/fragments/show/model/ShowItem;->setBundle(Landroid/os/Bundle;)V

    .line 8561
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "show"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->c:Lcom/cbs/app/view/model/Show;

    .line 8562
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showConfig"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowConfig;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->b:Lcom/cbs/app/view/model/ShowConfig;

    .line 8563
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "carousel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->e:[Landroid/os/Parcelable;

    .line 8564
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "assets"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->d:[Landroid/os/Parcelable;

    .line 8565
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v2, "showSeasons"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->f:[Landroid/os/Parcelable;

    .line 8566
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 8567
    const-string v2, "fragment_show_videos"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 8568
    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    if-eqz v2, :cond_6

    .line 8570
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 8571
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;)V

    goto/16 :goto_1
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p()V

    .line 1683
    return-void
.end method

.method public final g()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const v10, 0x7f0f01df

    .line 1690
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->q()V

    .line 1691
    invoke-virtual {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1692
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1693
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1694
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1695
    const-string v3, "show"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "show"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1697
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1698
    if-eqz v0, :cond_2

    .line 1699
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1700
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 1702
    const-string v0, "photos"

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getShowId()J

    move-result-wide v4

    .line 1705
    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "show_item"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 1706
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 1707
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 1708
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getInBoundDeepLinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 1710
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bb url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "livefeed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v9, v9, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    if-eqz v6, :cond_3

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1712
    new-instance v1, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;-><init>()V

    .line 1713
    const-string v0, "pageUrl"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v1, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    move-object v0, v1

    .line 1733
    check-cast v0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v0, v4}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1735
    :cond_1
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1736
    const-string v0, "fragment_show_photos"

    invoke-virtual {v3, v10, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1737
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1739
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "showPhotos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1740
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t()V

    .line 1742
    const-string v0, "fragment_show_photos"

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Ljava/lang/String;)V

    .line 1747
    :cond_2
    return-void

    .line 1714
    :cond_3
    if-eqz v0, :cond_0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1716
    const-string v0, "pageUrl"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v0, "showId"

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v5, v5, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|tab|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1720
    const-string v5, "eVar6"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v5, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-static {v4, v5, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public getAllAccessSeasonData()V
    .locals 4

    .prologue
    .line 1183
    new-instance v0, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v0}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 1184
    const-string v1, "ALL_ACCESS_SEASON_DATA"

    .line 1186
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v2, v1, v3}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1187
    return-void
.end method

.method public final getShowData()V
    .locals 4

    .prologue
    .line 892
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_1

    const-string v1, "show_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 897
    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Ljava/lang/String;)V

    .line 903
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 904
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->K:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 907
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const v11, 0x7f0f01df

    .line 1754
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s()V

    .line 1755
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1756
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v1

    .line 1757
    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1758
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1759
    const-string v3, "show"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v5, "show"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1760
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1761
    if-eqz v1, :cond_2

    .line 1762
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1763
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1765
    const-string v3, "Cast"

    invoke-direct {p0, v3}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v3

    .line 1766
    if-eqz v3, :cond_0

    .line 1767
    invoke-virtual {v3}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getShowId()J

    move-result-wide v4

    .line 1768
    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v7, "show_item"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 1769
    invoke-virtual {v3}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 1770
    invoke-virtual {v3}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 1771
    iget-object v8, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v8, v8, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    .line 1772
    invoke-virtual {v3}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getInBoundDeepLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 1774
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bb url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "livefeed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    if-eqz v6, :cond_3

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1776
    new-instance v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;-><init>()V

    .line 1777
    const-string v3, "pageUrl"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v3, Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1791
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1792
    const-string v2, "fragment_show_cast"

    invoke-virtual {v1, v11, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1793
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1795
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "showCast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1796
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t()V

    .line 1798
    const-string v0, "fragment_show_cast"

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Ljava/lang/String;)V

    .line 1803
    :cond_2
    return-void

    .line 1778
    :cond_3
    if-eqz v3, :cond_0

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1780
    const-string v3, "pageUrl"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v3, "showId"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1782
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|tab|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1784
    const-string v5, "eVar6"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v5, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-static {v4, v5, v3}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public final i()V
    .locals 12

    .prologue
    const v11, 0x7f0f01df

    .line 1810
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r()V

    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1812
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getView()Landroid/view/View;

    move-result-object v0

    .line 1813
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1814
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1815
    const-string v2, "show"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v4, "show"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1816
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1819
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1821
    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/ShowBlockNavigation;

    move-result-object v0

    .line 1822
    if-eqz v0, :cond_0

    .line 1824
    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v4, "show_item"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 1825
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 1826
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getShowId()J

    move-result-wide v4

    .line 1827
    iget-object v6, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v6, v6, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    .line 1828
    iget-object v7, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v7, v7, Lcom/cbs/app/view/fragments/show/model/ShowItem;->category:Ljava/lang/String;

    .line 1830
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 1832
    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation;->getInBoundDeepLinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 1834
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bb url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "livefeed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    if-eqz v8, :cond_1

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1836
    new-instance v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;-><init>()V

    .line 1837
    const-string v3, "pageUrl"

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1853
    const-string v1, "fragment_show_connect"

    invoke-virtual {v2, v11, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1854
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1857
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "showConnect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1858
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t()V

    .line 1860
    const-string v0, "fragment_show_connect"

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Ljava/lang/String;)V

    .line 1866
    :cond_0
    return-void

    .line 1838
    :cond_1
    if-eqz v0, :cond_2

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1839
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v9, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1840
    const-string v9, "pageUrl"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v8, "showId"

    invoke-virtual {v1, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1842
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|tab|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1844
    const-string v5, "eVar6"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v5, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-static {v3, v5, v4}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1849
    :cond_2
    new-instance v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;-><init>()V

    .line 1850
    const-string v3, "pageUrl"

    const-string v4, "about:blank"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setHasOptionsMenu(Z)V

    .line 476
    new-instance v0, Lcom/cbs/app/view/LogoKeeper;

    invoke-direct {v0, p1}, Lcom/cbs/app/view/LogoKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->q:Lcom/cbs/app/view/LogoKeeper;

    .line 477
    instance-of v0, p1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 478
    check-cast p1, Lcom/cbs/app/view/NavigationActivity;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->A:Lcom/cbs/app/view/menu/DrawerStatusListener;

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/NavigationActivity;->setDrawerStatusListner(Lcom/cbs/app/view/menu/DrawerStatusListener;)V

    .line 482
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 503
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .prologue
    const v5, 0x7f02018c

    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 654
    const v0, 0x7f0f0021

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 655
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 656
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 664
    :goto_0
    return-void

    .line 658
    :cond_0
    const v0, 0x7f0f0017

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 659
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 660
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->L:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 509
    const v0, 0x7f03008c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    .prologue
    .line 608
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 610
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t()V

    .line 611
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d()V

    .line 3632
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 3633
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 3634
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->N:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->L:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 614
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 669
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 679
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 682
    :goto_0
    return v0

    .line 3698
    :sswitch_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 3699
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "show_item"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 3700
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "showConfig"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/ShowConfig;

    .line 3701
    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3, v0, v4, v1}, Lcom/cbs/app/view/VideoSocialDialog;->a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/ShowConfig;)V

    .line 3702
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3703
    const-string v1, "Show Title"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3704
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v3, Lcom/cbs/app/analytics/Action;->bf:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v3, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move v0, v2

    .line 673
    goto :goto_0

    .line 4686
    :sswitch_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 4687
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "show_item"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Landroid/os/Bundle;)V

    .line 4688
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v3, "showConfig"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/ShowConfig;

    .line 4691
    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v0, v1}, Lcom/cbs/app/view/ShowSocialDialog;->a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V

    .line 4692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4693
    const-string v1, "Show Title"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4694
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v3, Lcom/cbs/app/analytics/Action;->bf:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v3, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    move v0, v2

    .line 677
    goto :goto_0

    .line 669
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0017 -> :sswitch_1
        0x7f0f0021 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 591
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 593
    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 566
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 568
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 569
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "afterAllDataLoaded, userStatus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i:Ljava/lang/String;

    .line 3541
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 3542
    if-nez v0, :cond_1

    .line 3543
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getShowData()V

    .line 3548
    :goto_0
    return-void

    .line 3546
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    const-string v1, "allDataLoaded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3547
    if-nez v0, :cond_2

    .line 3548
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l()V

    goto :goto_0

    .line 3550
    :cond_2
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n()V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 585
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 586
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 602
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 604
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 598
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractAsyncFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 517
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b()V

    .line 2621
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2623
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->N:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 520
    :cond_0
    if-nez p2, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_1

    .line 525
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 533
    :cond_2
    iput-object p2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->z:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "show_item"

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/model/ShowItem;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->setArguments(Landroid/os/Bundle;)V

    .line 561
    return-void
.end method

.method public setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 487
    return-void
.end method

.method public final setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->x:Lcom/cbs/app/view/model/VideoData;

    .line 646
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j()V

    .line 647
    return-void
.end method
