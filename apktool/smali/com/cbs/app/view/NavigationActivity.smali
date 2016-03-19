.class public Lcom/cbs/app/view/NavigationActivity;
.super Lcom/cbs/app/view/AbstractFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
.implements Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/NavigationActivity$a;
    }
.end annotation


# static fields
.field private static m:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Lcom/cbs/app/view/menu/MenuClickListener;

.field private E:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field k:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

.field l:Landroid/content/DialogInterface$OnClickListener;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/cbs/app/view/LogoKeeper;

.field private q:I

.field private r:Landroid/support/v4/widget/DrawerLayout;

.field private s:Landroid/widget/ListView;

.field private t:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private u:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/menu/CBSMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/cbs/app/view/menu/DrawerStatusListener;

.field private x:Lcom/cbs/app/manager/AuthStatusManager;

.field private y:Landroid/view/ViewGroup;

.field private z:Lcom/cbs/app/service/AdServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/NavigationActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->g:Z

    .line 89
    iput-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->h:Z

    .line 90
    iput-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    .line 91
    iput-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->j:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->o:Z

    .line 95
    new-instance v0, Lcom/cbs/app/view/NavigationActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/NavigationActivity$1;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->k:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    .line 121
    new-instance v0, Lcom/cbs/app/view/NavigationActivity$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/NavigationActivity$2;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    new-instance v0, Lcom/cbs/app/view/NavigationActivity$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/NavigationActivity$3;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->t:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->x:Lcom/cbs/app/manager/AuthStatusManager;

    .line 148
    new-instance v0, Lcom/cbs/app/view/NavigationActivity$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/NavigationActivity$4;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    .line 1214
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1128
    iput-object p2, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@replaceContentFragment()::NavigateTo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replaceContentFragment() called with: fragment = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], tag = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], addToBackStack = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1132
    const v1, 0x7f0f02bc

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1135
    const-string v1, "ROOT_CONTENT_FRAGMENT"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "ROOT_CONTENT_FRAGMENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1140
    :cond_0
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1142
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1143
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/NavigationActivity;I)V
    .locals 2

    .prologue
    .line 81
    .line 4727
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/menu/CBSMenuItem;

    .line 4729
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    if-eqz v1, :cond_0

    .line 4730
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    invoke-interface {v1, v0}, Lcom/cbs/app/view/menu/MenuClickListener;->a(Lcom/cbs/app/view/menu/CBSMenuItem;)V

    .line 81
    :cond_0
    return-void
.end method

.method private a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showItemSelected() called with: showItem = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], videoData = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], resumeMode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], resumeTime = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 1109
    if-nez p1, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShowBrowse"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    .line 1111
    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0, v3}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->setAlreadyClicked(Z)V

    .line 1114
    :cond_0
    const-string v0, "could not find the show page"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1122
    :goto_0
    return-void

    .line 1117
    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)Lcom/cbs/app/view/fragments/ShowFragmentV2;

    move-result-object v0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "frShow == null--Show info:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    sget-object v1, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    iget-object v2, p1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string v1, "fragment_show_home"

    const-string v2, "fragment_cbs_home"

    invoke-direct {p0, v0, v1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    invoke-direct {p0, v3}, Lcom/cbs/app/view/NavigationActivity;->b(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showFragmentOnTop() called with: stringLiteral = ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], arguments = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v2, ""

    .line 925
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    .line 927
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    move-object v0, v2

    .line 979
    :goto_2
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 980
    if-eqz v1, :cond_1

    .line 981
    const-string v2, "top_fragments"

    invoke-direct {p0, v1, p1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_1
    invoke-direct {p0, v5}, Lcom/cbs/app/view/NavigationActivity;->b(Z)V

    .line 986
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 987
    if-eqz v1, :cond_2

    .line 988
    sget-object v2, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 992
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 925
    goto :goto_0

    .line 927
    :sswitch_0
    const-string v6, "fragment_signin"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "fragment_signup"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_2
    const-string v6, "fragment_signup_social"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    .line 932
    :pswitch_0
    if-eqz p2, :cond_4

    .line 933
    const-string v2, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 934
    const-string v4, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 935
    const-string v4, "ARG_SKU"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v7, v2

    move-object v2, v1

    move v1, v7

    .line 942
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/livetv/fragment/SignInFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;ZLjava/lang/String;Z)Lcom/cbs/app/livetv/fragment/SignInFragment;

    move-result-object v1

    move-object v0, v1

    .line 943
    check-cast v0, Lcom/cbs/app/livetv/fragment/SignInFragment;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/fragment/SignInFragment;->setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V

    .line 944
    const-string v0, "Sign In"

    .line 945
    iput-boolean v5, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    goto :goto_2

    :cond_4
    move-object v2, v1

    move v1, v3

    .line 939
    goto :goto_3

    .line 952
    :pswitch_1
    if-eqz p2, :cond_5

    .line 953
    const-string v2, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 954
    const-string v4, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 955
    const-string v4, "ARG_SKU"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v7, v2

    move-object v2, v1

    move v1, v3

    move v3, v7

    .line 961
    :goto_4
    invoke-static {v0, v3, v2, v1}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;ZLjava/lang/String;Z)Lcom/cbs/app/livetv/fragment/SignUpFragment;

    move-result-object v1

    move-object v0, v1

    .line 962
    check-cast v0, Lcom/cbs/app/livetv/fragment/SignUpFragment;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/fragment/SignUpFragment;->setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V

    .line 963
    const-string v0, "Sign Up"

    .line 964
    iput-boolean v5, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    goto/16 :goto_2

    :cond_5
    move-object v2, v1

    move v1, v3

    .line 959
    goto :goto_4

    .line 968
    :pswitch_2
    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    move-result-object v1

    move-object v0, v1

    .line 969
    check-cast v0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->setFragmentCallback(Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;)V

    .line 970
    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 971
    invoke-static {}, Lcom/cbs/app/livetv/model/SocialNames;->values()[Lcom/cbs/app/livetv/model/SocialNames;

    move-result-object v0

    const-string v2, "provider_name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/SocialNames;->getNameString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sign Up via "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    iput-boolean v5, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    goto/16 :goto_2

    .line 972
    :cond_6
    const-string v0, ""

    goto :goto_5

    .line 927
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e23df3b -> :sswitch_2
        -0x2c41af8f -> :sswitch_0
        -0x2c41ae19 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/cbs/app/view/NavigationActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/view/NavigationActivity;)Lcom/cbs/app/view/menu/DrawerStatusListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->w:Lcom/cbs/app/view/menu/DrawerStatusListener;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_1

    .line 440
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showEye: menuStatus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " peek = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/cbs/app/view/LogoKeeper;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 452
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_1
    :goto_1
    return-void

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/cbs/app/view/LogoKeeper;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v3, "Home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->p()V

    goto :goto_1

    .line 3505
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 3506
    if-eqz v2, :cond_0

    .line 3507
    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 3508
    if-eqz v2, :cond_0

    .line 3509
    const v3, 0x7f0f02d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3510
    if-eqz v3, :cond_4

    .line 3511
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3513
    :cond_4
    const v3, 0x7f0f00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3514
    if-eqz v2, :cond_0

    .line 3515
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/cbs/app/view/NavigationActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/NavigationActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public static j()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/cbs/app/view/NavigationActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 476
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_4

    .line 478
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_3

    .line 480
    const v2, 0x7f0f02d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 481
    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_0
    const v2, 0x7f0f00e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_1
    const v2, 0x7f0f02dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :cond_2
    const v2, 0x7f0f02dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    :cond_4
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1036
    const-string v0, "top_fragments"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    .line 1038
    if-eqz v0, :cond_2

    .line 1039
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 1040
    if-lez v2, :cond_0

    .line 1041
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_4

    .line 1043
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    .line 1049
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@removeAndPopTopFragment()::NavigateTo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 1051
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    if-nez v0, :cond_5

    .line 1052
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    .line 1053
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1063
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1066
    :cond_2
    return-void

    .line 1043
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 1046
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    goto :goto_1

    .line 1055
    :cond_5
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 1056
    if-eqz v1, :cond_1

    .line 1057
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 1147
    iput p1, p0, Lcom/cbs/app/view/NavigationActivity;->q:I

    .line 1148
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1152
    packed-switch p1, :pswitch_data_0

    .line 1208
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1154
    :pswitch_1
    iput-boolean v2, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    .line 1155
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "My CBS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4718
    const-class v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    const-string v1, "fragment_my_cbs"

    invoke-virtual {p0, v0, v1, v3}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1160
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1161
    if-eqz p2, :cond_5

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 1162
    check-cast p2, Ljava/lang/Boolean;

    .line 1164
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "Live TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    iget-wide v0, p0, Lcom/cbs/app/view/NavigationActivity;->A:J

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->B:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    goto :goto_1

    .line 1169
    :pswitch_2
    iput-boolean v2, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    .line 1170
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    goto :goto_0

    .line 1173
    :pswitch_3
    iput-boolean v2, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    .line 1174
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    .line 1175
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/cbs/app/livetv/model/SocialProvider;

    if-eqz v0, :cond_2

    .line 1176
    check-cast p2, Lcom/cbs/app/livetv/model/SocialProvider;

    .line 1177
    const-string v0, "fragment_signup_social"

    invoke-virtual {p2}, Lcom/cbs/app/livetv/model/SocialProvider;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "Live TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    iget-wide v0, p0, Lcom/cbs/app/view/NavigationActivity;->A:J

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->B:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 1183
    :pswitch_4
    iput-boolean v2, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    .line 1184
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    goto :goto_0

    .line 1187
    :pswitch_5
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/cbs/app/view/BackButtonListener;

    if-eqz v0, :cond_0

    .line 1188
    check-cast p2, Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {p0, p2}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    goto :goto_0

    .line 1192
    :pswitch_6
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    .line 1193
    if-eqz p2, :cond_3

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1194
    const-string v0, "fragment_signin"

    check-cast p2, Landroid/os/Bundle;

    invoke-direct {p0, v0, p2}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1196
    :cond_3
    const-string v0, "fragment_signin"

    invoke-direct {p0, v0, v3}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1200
    :pswitch_7
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    .line 1201
    if-eqz p2, :cond_4

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1202
    const-string v0, "fragment_signup"

    check-cast p2, Landroid/os/Bundle;

    invoke-direct {p0, v0, p2}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1204
    :cond_4
    const-string v0, "fragment_signup"

    invoke-direct {p0, v0, v3}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    goto/16 :goto_2

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(I[Ljava/lang/String;Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;)V
    .locals 3

    .prologue
    .line 1081
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1082
    const-string v1, "selected"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1085
    new-instance v2, Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-direct {v2}, Lcom/cbs/app/view/IwantToSeeDialogFrag;-><init>()V

    .line 1086
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 1087
    invoke-virtual {v2, p3}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->setListener(Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;)V

    .line 1088
    const-string v0, "iwanttoseedialog"

    invoke-virtual {v2, v1, v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 646
    iget-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-nez v1, :cond_1

    .line 3679
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v2

    .line 653
    if-eqz v2, :cond_3

    .line 654
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    .line 655
    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_1
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 3678
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    const-string v1, "fragment_signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->n:Ljava/lang/String;

    const-string v1, "fragment_signup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3681
    const-class v0, Lcom/cbs/app/view/fragments/AdFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3684
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3685
    iput-wide p1, p0, Lcom/cbs/app/view/NavigationActivity;->A:J

    .line 3686
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    .line 3687
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3689
    :cond_2
    iput-object p3, p0, Lcom/cbs/app/view/NavigationActivity;->B:Ljava/lang/String;

    .line 3690
    const-string v2, "tag"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3692
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0f02be

    const-string v3, "ad_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v0, :cond_1

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchContent() called with: fragment = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], tag = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    .line 757
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 759
    const-string v0, "fragment_show_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    :goto_0
    const-string v0, "ROOT_CONTENT_FRAGMENT"

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "fragment_live_tv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 773
    :cond_1
    return-void

    .line 761
    :cond_2
    const-string v0, "ShowBrowse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 763
    const-string v1, "position"

    iget v2, p0, Lcom/cbs/app/view/NavigationActivity;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/livetv/model/SocialProvider;)V
    .locals 2

    .prologue
    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    .line 1018
    const-string v0, "fragment_signup_social"

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/SocialProvider;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1019
    return-void
.end method

.method public final a(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1093
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v1 .. v7}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)V

    .line 1094
    return-void
.end method

.method public final a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/model/VideoData;IJ)V
    .locals 8

    .prologue
    .line 1101
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)V

    .line 1102
    return-void
.end method

.method public final a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1097
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;IJ)V

    .line 1098
    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 793
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v0, :cond_2

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchToFragment() called with: classType = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], tag = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], arguments = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->q()V

    .line 796
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 797
    const-string v1, "ShowBrowse"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 799
    const-string v2, "position"

    iget v3, p0, Lcom/cbs/app/view/NavigationActivity;->q:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 805
    :cond_0
    :goto_0
    const-string v1, "ROOT_CONTENT_FRAGMENT"

    invoke-direct {p0, v0, p2, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "fragment_live_tv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 810
    :cond_1
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->M(Landroid/content/Context;)V

    .line 812
    :cond_2
    return-void

    .line 801
    :cond_3
    const-string v1, "LIVE_TV_SCHEDULE_FRAGMENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    invoke-static {v2, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 999
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1000
    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1001
    const-string v1, "fragment_signin"

    invoke-direct {p0, v1, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1002
    return-void
.end method

.method public final a(ZLjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1009
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1011
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v1, "ARG_SHOW_REGISTER_LATER"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1013
    const-string v1, "fragment_signup"

    invoke-direct {p0, v1, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1014
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 915
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 918
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 919
    return-void
.end method

.method public final c(Lcom/cbs/app/view/BackButtonListener;)V
    .locals 0

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 1077
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    goto :goto_0

    .line 3430
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->b(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->b(Z)V

    .line 431
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 466
    invoke-static {p0}, Lcom/cbs/app/view/LogoKeeper;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 468
    invoke-direct {p0}, Lcom/cbs/app/view/NavigationActivity;->p()V

    .line 470
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 584
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 585
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/menu/CBSMenuItem;

    invoke-interface {v1, v0}, Lcom/cbs/app/view/menu/MenuClickListener;->a(Lcom/cbs/app/view/menu/CBSMenuItem;)V

    .line 587
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->d()V

    .line 588
    return-void
.end method

.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Lcom/cbs/app/view/MainApplication;
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 592
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 595
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 596
    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v2, Lcom/cbs/app/view/menu/CBSMenuItem;

    invoke-direct {v2, v0}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Home"

    const-string v3, "fragment_cbs_home"

    const-class v4, Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Shows"

    const-string v3, "ShowBrowse"

    const-class v4, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Live TV"

    const-string v3, "fragment_live_tv"

    const-class v4, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Schedule"

    const-string v3, "fragment_schedule"

    const-class v4, Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "My CBS"

    const-string v3, "fragment_my_cbs"

    const-class v4, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.cbsstore.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3617
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 609
    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Shop"

    invoke-direct {v1, v2, v5, v5}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/cbs/app/view/menu/CBSMenuItem;

    const-string v2, "Settings"

    const-string v3, "settings_fragment"

    const-class v4, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbs/app/view/menu/CBSMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    return-void

    .line 598
    :cond_2
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-nez v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 700
    const-string v1, "ad_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 701
    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/menu/CBSMenuItem;

    invoke-interface {v1, v0}, Lcom/cbs/app/view/menu/MenuClickListener;->a(Lcom/cbs/app/view/menu/CBSMenuItem;)V

    .line 714
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->f()V

    .line 715
    return-void
.end method

.method public final l()V
    .locals 4

    .prologue
    .line 736
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbs/app/view/NavigationActivity$7;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NavigationActivity$7;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 751
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Z)V

    .line 996
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | -1 | 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    sparse-switch p1, :sswitch_data_0

    .line 888
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 891
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->finish()V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 822
    :sswitch_0
    iput-boolean v4, p0, Lcom/cbs/app/view/NavigationActivity;->c:Z

    .line 823
    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 826
    const-string v0, "showItem"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->E:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    goto :goto_0

    .line 831
    :sswitch_1
    if-eqz p3, :cond_0

    .line 833
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_0

    .line 835
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 843
    :sswitch_2
    if-ne p2, v2, :cond_1

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->o:Z

    .line 847
    sget-object v0, Lcom/cbs/app/analytics/Action;->r:Lcom/cbs/app/analytics/Action;

    .line 848
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 849
    const-string v2, "Accept"

    const-string v3, "accept"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 854
    invoke-static {p0, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Z)V

    .line 856
    invoke-static {}, Lcom/cbs/app/view/NielsenDialogHelper;->a()V

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->finish()V

    goto :goto_0

    .line 867
    :sswitch_3
    if-ne p2, v2, :cond_0

    .line 870
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sku"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {p0, v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Lcom/cbs/app/view/AbstractFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 895
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/cbs/app/view/AbstractFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 820
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x12e -> :sswitch_4
        0x14d -> :sswitch_0
        0x309 -> :sswitch_3
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 783
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 785
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->c:Z

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->supportInvalidateOptionsMenu()V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->u:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 790
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v0, 0x7f0300bf

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->setContentView(I)V

    .line 197
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->b()V

    .line 200
    iput-boolean v3, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    .line 201
    new-instance v0, Lcom/cbs/app/manager/AuthStatusManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/manager/AuthStatusManager;-><init>(Landroid/app/Activity;Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->x:Lcom/cbs/app/manager/AuthStatusManager;

    .line 202
    new-instance v0, Lcom/cbs/app/view/LogoKeeper;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/LogoKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->p:Lcom/cbs/app/view/LogoKeeper;

    .line 203
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 204
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->setRequestedOrientation(I)V

    .line 2137
    :goto_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 2142
    if-eqz v1, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 2146
    const v0, 0x7f0f02bf

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSMiniController;

    .line 2147
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/widgets/a;)V

    .line 2149
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g(I)V

    .line 2525
    :cond_0
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v0

    .line 2526
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 2527
    if-eqz v1, :cond_2

    .line 2528
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    const-string v2, "subscriber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "suspended"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2529
    :cond_1
    const v0, 0x7f0200bf

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 2533
    :goto_1
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2534
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 2535
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 2536
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2537
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2538
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 2541
    :cond_2
    const v0, 0x7f0f02bb

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    .line 2542
    const v0, 0x7f0f02bd

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    .line 2545
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f02011d

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 2547
    new-instance v0, Lcom/cbs/app/view/NavigationActivity$6;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {v0, p0, p0, v1}, Lcom/cbs/app/view/NavigationActivity$6;-><init>(Lcom/cbs/app/view/NavigationActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->u:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 2573
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->u:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 2575
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->h()V

    .line 2576
    new-instance v0, Lcom/cbs/app/view/menu/CbsMenuAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/view/menu/CbsMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2578
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2579
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    new-instance v1, Lcom/cbs/app/view/NavigationActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/view/NavigationActivity$a;-><init>(Lcom/cbs/app/view/NavigationActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->t:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_3

    .line 218
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    :cond_3
    invoke-static {p0}, Lcom/cbs/app/view/NielsenDialogHelper;->a(Landroid/content/Context;)Z

    move-result v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "handledByUrl: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    const-string v0, "true"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->D:Lcom/cbs/app/view/menu/MenuClickListener;

    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/menu/CBSMenuItem;

    invoke-interface {v1, v0}, Lcom/cbs/app/view/menu/MenuClickListener;->a(Lcom/cbs/app/view/menu/CBSMenuItem;)V

    .line 228
    :cond_4
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 230
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->z:Lcom/cbs/app/service/AdServiceImpl;

    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/view/ViewGroup;)V

    .line 233
    :cond_5
    return-void

    .line 208
    :cond_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 2531
    :cond_7
    const v0, 0x7f0200bd

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto/16 :goto_1

    .line 223
    :cond_8
    const-string v0, "false"

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->c(Landroid/view/ViewGroup;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->t:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 375
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onDestroy()V

    .line 376
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 405
    .line 407
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 409
    sget-boolean v1, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 412
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->finish()V

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 420
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->b:Ljava/lang/String;

    const-string v2, "My CBS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 424
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 245
    sparse-switch v1, :sswitch_data_0

    .line 259
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 247
    :sswitch_0
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 3022
    :sswitch_1
    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->c:Z

    .line 3024
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/cbs/app/view/NavigationActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3025
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->r:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 3027
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cbs/app/view/ShowSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3028
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3029
    const/16 v2, 0x14d

    invoke-virtual {p0, v1, v2}, Lcom/cbs/app/view/NavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f03d2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->y:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->b(Landroid/view/ViewGroup;)V

    .line 356
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onPause()V

    .line 358
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->c()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    .line 360
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    sget-object v0, Lcom/cbs/app/analytics/Action;->r:Lcom/cbs/app/analytics/Action;

    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 363
    const-string v2, "Exit App"

    const-string v3, "Exit App"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 366
    :cond_1
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 640
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 642
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->u:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 643
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 903
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onPostResume()V

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->j:Z

    .line 907
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->E:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->E:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->E:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 911
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onResume()V

    .line 268
    iput-boolean v6, p0, Lcom/cbs/app/view/NavigationActivity;->c:Z

    .line 270
    invoke-static {p0}, Lcom/cbs/app/service/AuthServiceImpl;->c(Landroid/content/Context;)V

    .line 272
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    .line 275
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->b()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    .line 286
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity;->k:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-static {p0, v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V

    .line 289
    const/4 v0, 0x0

    .line 291
    iget-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->g:Z

    if-eqz v1, :cond_3

    .line 292
    sget-object v0, Lcom/cbs/app/analytics/Action;->U:Lcom/cbs/app/analytics/Action;

    .line 305
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 311
    :cond_1
    iput-boolean v6, p0, Lcom/cbs/app/view/NavigationActivity;->g:Z

    .line 313
    invoke-static {}, Lcom/cbs/app/service/AdServiceImpl;->a()V

    .line 316
    iget-boolean v0, p0, Lcom/cbs/app/view/NavigationActivity;->o:Z

    if-eqz v0, :cond_2

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbs/app/view/NavigationActivity$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/NavigationActivity$5;-><init>(Lcom/cbs/app/view/NavigationActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    .line 337
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 339
    if-eqz v0, :cond_2

    .line 342
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 343
    sget-object v0, Lcom/cbs/app/view/LogoKeeper;->a:Ljava/util/Stack;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_2
    return-void

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/NavigationActivity;->x:Lcom/cbs/app/manager/AuthStatusManager;

    invoke-virtual {v1}, Lcom/cbs/app/manager/AuthStatusManager;->h()V

    .line 296
    iget-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->C:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cbs/app/view/NavigationActivity;->c:Z

    if-nez v1, :cond_0

    .line 297
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->q(Landroid/content/Context;)J

    move-result-wide v2

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 299
    sub-long v2, v4, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 300
    sget-object v0, Lcom/cbs/app/analytics/Action;->V:Lcom/cbs/app/analytics/Action;

    .line 301
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->p(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onStart()V

    .line 388
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Lcom/cbs/app/view/AbstractFragmentActivity;->onStop()V

    .line 382
    return-void
.end method

.method public setDrawerStatusListner(Lcom/cbs/app/view/menu/DrawerStatusListener;)V
    .locals 0

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity;->w:Lcom/cbs/app/view/menu/DrawerStatusListener;

    .line 190
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    :cond_0
    return-void
.end method
