.class public Lcom/rmedia/rplayer/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;
    }
.end annotation


# instance fields
.field private activeFragment:Landroidx/fragment/app/l;

.field private config:Lcom/rmedia/rplayer/models/AppConfig;

.field private final homeFragment:Landroidx/fragment/app/l;

.field private final isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRoutingToPlayer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTvMode:Z

.field private final libraryFragment:Landroidx/fragment/app/l;

.field private final localFragment:Landroidx/fragment/app/l;

.field private final moreFragment:Landroidx/fragment/app/l;

.field private permissionManager:Lcom/rmedia/rplayer/helpers/PermissionManager;

.field private final requestPermissionLauncher:Lb5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5;"
        }
    .end annotation
.end field

.field private final tvHomeFragment:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;

    invoke-direct {v0}, Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;-><init>()V

    iput-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->homeFragment:Landroidx/fragment/app/l;

    new-instance v1, Lcom/rmedia/rplayer/features/mainfragments/FragmentLocal;

    invoke-direct {v1}, Lcom/rmedia/rplayer/features/mainfragments/FragmentLocal;-><init>()V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->localFragment:Landroidx/fragment/app/l;

    new-instance v1, Lcom/rmedia/rplayer/features/mainfragments/FragmentMylist;

    invoke-direct {v1}, Lcom/rmedia/rplayer/features/mainfragments/FragmentMylist;-><init>()V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->libraryFragment:Landroidx/fragment/app/l;

    new-instance v1, Lcom/rmedia/rplayer/features/mainfragments/FragmentMore;

    invoke-direct {v1}, Lcom/rmedia/rplayer/features/mainfragments/FragmentMore;-><init>()V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->moreFragment:Landroidx/fragment/app/l;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isRoutingToPlayer:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/rmedia/rplayer/features/mainfragments/FragmentHomeTV;

    invoke-direct {v1}, Lcom/rmedia/rplayer/features/mainfragments/FragmentHomeTV;-><init>()V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->tvHomeFragment:Landroidx/fragment/app/l;

    iput-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->activeFragment:Landroidx/fragment/app/l;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    new-instance v0, Ly4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly4;-><init>(I)V

    new-instance v1, Lwh3;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lwh3;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lx4;Lw4;)Lb5;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->requestPermissionLauncher:Lb5;

    return-void
.end method

.method private checkAdBlockerAndPrompt()V
    .locals 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lwi0;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3, v0, v1}, Lwi0;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAndPromptDeviceType()V
    .locals 15

    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "device_prompt_shown"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v0, 0x0

    if-nez v0, :cond_5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d004e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Li6;

    const v3, 0x7f140134

    invoke-direct {v2, p0, v3}, Li6;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Li6;->setView(Landroid/view/View;)Li6;

    move-result-object v2

    invoke-virtual {v2, v1}, Li6;->a(Z)Li6;

    move-result-object v2

    invoke-virtual {v2}, Li6;->create()Lj6;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v2, 0x7f0a037b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    const v3, 0x7f0a0381

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    const v5, 0x7f0a0483

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/TextView;

    const v5, 0x7f0a048b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    const v5, 0x7f0a00a0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "uimode"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    const/4 v7, 0x4

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v6

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    new-instance v6, Lzh1;

    invoke-direct {v6, v1}, Lzh1;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/UiModeManager;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v5

    if-ne v5, v7, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "android.software.leanback"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    new-array v7, v6, [Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v5, "tv"

    goto :goto_2

    :cond_4
    const-string v5, "phone"

    :goto_2
    aput-object v5, v7, v1

    new-instance v5, Lai1;

    move-object v9, v5

    move-object v10, v7

    move-object v11, v3

    move-object v13, v2

    invoke-direct/range {v9 .. v14}, Lai1;-><init>([Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V

    invoke-virtual {v5}, Lai1;->run()V

    new-instance v9, Lbi1;

    invoke-direct {v9, v7, v5, v1}, Lbi1;-><init>([Ljava/lang/String;Lai1;I)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lbi1;

    invoke-direct {v1, v7, v5, v6}, Lbi1;-><init>([Ljava/lang/String;Lai1;I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Loc2;

    const/4 v9, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v7}, Loc2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public static synthetic g(Lcom/rmedia/rplayer/activities/MainActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAndPromptDeviceType$5(Landroid/view/View;Z)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    if-nez p2, :cond_2

    const-string p2, "local"

    const-string v0, "fragmentToOpen"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0a008d

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p2, :cond_1

    const v1, 0x7f0a0345

    invoke-virtual {p2, v1}, Lo02;->setSelectedItemId(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private handleSportsNotificationIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "sports_match_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/rmedia/rplayer/models/SportModel$Match;

    invoke-direct {v1}, Lcom/rmedia/rplayer/models/SportModel$Match;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rmedia/rplayer/models/SportModel$Match;->id:Ljava/lang/String;

    const-string v2, "sports_mapped_channels"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/rmedia/rplayer/models/SportModel$Match;->mappedChannels:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/rmedia/rplayer/sports/SportsPlayerLauncher;

    invoke-direct {v2, p0}, Lcom/rmedia/rplayer/sports/SportsPlayerLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/rmedia/rplayer/sports/SportsPlayerLauncher;->launchMatch(Lcom/rmedia/rplayer/models/SportModel$Match;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private hasValidatedInternet()Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static synthetic i(Lcom/rmedia/rplayer/activities/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$setupActivity$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private initializeDependencies()V
    .locals 2

    invoke-static {p0}, Lcom/rmedia/rplayer/downloader/DownloadTracker;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/downloader/DownloadTracker;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const-string v1, "general"

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private initializeMobileFragments()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->moreFragment:Landroidx/fragment/app/l;

    const-class v2, Lcom/rmedia/rplayer/features/mainfragments/FragmentMore;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a01e1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/l;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->moreFragment:Landroidx/fragment/app/l;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/l;)Landroidx/fragment/app/a;

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->libraryFragment:Landroidx/fragment/app/l;

    const-class v2, Lcom/rmedia/rplayer/features/mainfragments/FragmentMylist;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2, v4}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/l;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->libraryFragment:Landroidx/fragment/app/l;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/l;)Landroidx/fragment/app/a;

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->localFragment:Landroidx/fragment/app/l;

    const-class v2, Lcom/rmedia/rplayer/features/mainfragments/FragmentLocal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2, v4}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/l;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->localFragment:Landroidx/fragment/app/l;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/l;)Landroidx/fragment/app/a;

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->homeFragment:Landroidx/fragment/app/l;

    const-class v2, Lcom/rmedia/rplayer/features/mainfragments/FragmentHome;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2, v4}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/l;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    return-void
.end method

.method private initializeUserInterface()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    const v0, 0x7f0a008d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/rmedia/rplayer/helpers/PermissionManager;

    iget-object v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->requestPermissionLauncher:Lb5;

    invoke-direct {v1, p0, v2}, Lcom/rmedia/rplayer/helpers/PermissionManager;-><init>(Landroid/app/Activity;Lb5;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->permissionManager:Lcom/rmedia/rplayer/helpers/PermissionManager;

    iget-boolean v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->tvHomeFragment:Landroidx/fragment/app/l;

    const/4 v2, 0x0

    const v3, 0x7f0a01e1

    invoke-virtual {v1, v3, v0, v2}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lwh1;

    invoke-direct {v1, p0}, Lwh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lo02;->setOnItemSelectedListener(Lm02;)V

    :cond_2
    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->initializeMobileFragments()V

    :goto_0
    return-void
.end method

.method private isSinkholeIp(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "127.0.0.1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "::1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isUserNotAuthenticated()Z
    .locals 4

    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "skipped_login"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isGuest"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const-class v0, Lcom/rmedia/rplayer/features/landing/LandingActivity;

    invoke-direct {p0, v0}, Lcom/rmedia/rplayer/activities/MainActivity;->navigateTo(Ljava/lang/Class;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic j([Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAndPromptDeviceType$6([Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic k(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAdBlockerAndPrompt$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/rmedia/rplayer/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAdBlockerAndPrompt$12()V

    return-void
.end method

.method private synthetic lambda$checkAdBlockerAndPrompt$10(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->checkAdBlockerAndPrompt()V

    return-void
.end method

.method private static synthetic lambda$checkAdBlockerAndPrompt$11(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$checkAdBlockerAndPrompt$12()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Li6;

    invoke-direct {v0, p0}, Li6;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130024

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li6;->setTitle(Ljava/lang/CharSequence;)Li6;

    move-result-object v0

    const v1, 0x7f130023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li6;->b(Ljava/lang/String;)Li6;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li6;->a(Z)Li6;

    move-result-object v0

    const v2, 0x7f13004a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lvh1;

    invoke-direct {v3, p0, v1}, Lvh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;I)V

    invoke-virtual {v0, v2, v3}, Li6;->d(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Li6;

    move-result-object v0

    const v1, 0x7f13049c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyh1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lyh1;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Li6;->c(Ljava/lang/String;Lyh1;)Li6;

    move-result-object v0

    invoke-virtual {v0}, Li6;->e()Lj6;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkAdBlockerAndPrompt$13(Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->hasValidatedInternet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_0
    const-string v0, "pagead2.googlesyndication.col"

    const-string v1, "www.highperformanceformat.com"

    const-string v2, "googleads.g.doubleclick.nes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloudflare.com"

    const-string v2, "microsoft.com"

    const-string v3, "google.com"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Lcom/rmedia/rplayer/activities/MainActivity;->resolveDomain(Ljava/lang/String;)Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;

    move-result-object v5

    iget-boolean v5, v5, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;->resolved:Z

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_3
    move v1, v2

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v0, v2

    invoke-direct {p0, v6}, Lcom/rmedia/rplayer/activities/MainActivity;->resolveDomain(Ljava/lang/String;)Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;

    move-result-object v6

    iget-boolean v7, v6, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;->resolved:Z

    if-eqz v7, :cond_4

    iget-object v6, v6, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;->ip:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/rmedia/rplayer/activities/MainActivity;->isSinkholeIp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    if-lt v1, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    if-lt v3, v1, :cond_8

    if-lt v4, v1, :cond_8

    :goto_3
    new-instance v1, Luh1;

    invoke-direct {v1, p0, v0}, Luh1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static synthetic lambda$checkAndPromptDeviceType$5(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f866666    # 1.05f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$checkAndPromptDeviceType$6([Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v1, "tv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "#AAAAAA"

    const/4 v2, -0x1

    const v3, 0x7f080356

    if-eqz p0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$checkAndPromptDeviceType$7([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const-string v0, "phone"

    aput-object v0, p0, p2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$checkAndPromptDeviceType$8([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    const-string v0, "tv"

    aput-object v0, p0, p2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$checkAndPromptDeviceType$9(Landroid/content/SharedPreferences;[Ljava/lang/String;Lj6;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p4, 0x0

    aget-object p2, p2, p4

    const-string p4, "device_type_override"

    invoke-interface {p1, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "device_prompt_shown"

    const/4 p4, 0x1

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p3}, Lw8;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private synthetic lambda$initializeUserInterface$14(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0347

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {p0, v2}, Lcom/rmedia/rplayer/helpers/LiveTvLauncher;->launch(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_0
    const v0, 0x7f0a0343

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->homeFragment:Landroidx/fragment/app/l;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0345

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->localFragment:Landroidx/fragment/app/l;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0344

    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->libraryFragment:Landroidx/fragment/app/l;

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0346

    if-ne p1, v0, :cond_4

    iget-object v2, p0, Lcom/rmedia/rplayer/activities/MainActivity;->moreFragment:Landroidx/fragment/app/l;

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/rmedia/rplayer/activities/MainActivity;->switchFragment(Landroidx/fragment/app/l;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private static synthetic lambda$new$16(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isRoutingToPlayer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$onResume$15()V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->permissionManager:Lcom/rmedia/rplayer/helpers/PermissionManager;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/helpers/PermissionManager;->requestNotificationPermission()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->permissionManager:Lcom/rmedia/rplayer/helpers/PermissionManager;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/helpers/PermissionManager;->requestStoragePermissions()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupActivity$1(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Access Denied: Account Suspended"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupActivity$2(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->checkAdBlockerAndPrompt()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupActivity$3()V
    .locals 2

    invoke-static {p0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getAppConfig()Lcom/rmedia/rplayer/models/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/rmedia/rplayer/models/AppConfig;->appDetails:Lcom/rmedia/rplayer/models/AppConfig$AppDetails;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/rmedia/rplayer/helpers/AppUpdateChecker;

    invoke-direct {v1, p0}, Lcom/rmedia/rplayer/helpers/AppUpdateChecker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/helpers/AppUpdateChecker;->check(Lcom/rmedia/rplayer/models/AppConfig;)V

    invoke-static {}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getInstance()Lcom/rmedia/rplayer/helpers/PremiumManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rmedia/rplayer/helpers/PremiumManager;->checkLicense(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSnifferDetectedDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic m(Lcom/rmedia/rplayer/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAdBlockerAndPrompt$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/rmedia/rplayer/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$setupActivity$3()V

    return-void
.end method

.method private navigateTo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x14008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic o(Lcom/rmedia/rplayer/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$onResume$15()V

    return-void
.end method

.method public static synthetic p([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAndPromptDeviceType$8([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAndPromptDeviceType$7([Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/rmedia/rplayer/activities/MainActivity;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAdBlockerAndPrompt$13(Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;)V

    return-void
.end method

.method private resolveDomain(Ljava/lang/String;)Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    :cond_2
    :goto_1
    new-instance p1, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;

    invoke-direct {p1, v0, v1}, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;

    invoke-direct {p1, v0, v1}, Lcom/rmedia/rplayer/activities/MainActivity$DnsResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public static synthetic s(Lcom/rmedia/rplayer/activities/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$setupActivity$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private setupActivity()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/rmedia/rplayer/helpers/CryptoManager;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/helpers/CryptoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/helpers/CryptoManager;->isDeveloperDeviceNative(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/rmedia/rplayer/helpers/PackageCheckerHelper;->getDetectedSniffer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/rmedia/rplayer/activities/MainActivity;->showSnifferDetectedDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "device_type_override"

    const-string v3, "auto"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    goto :goto_1

    :cond_2
    const-string v2, "phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    goto :goto_1

    :cond_3
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isTvMode:Z

    :goto_1
    invoke-static {}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getInstance()Lcom/rmedia/rplayer/helpers/PremiumManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getBannedStatus()Lqe1;

    move-result-object v0

    new-instance v2, Lxh1;

    invoke-direct {v2, p0, v1}, Lxh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;I)V

    invoke-virtual {v0, p0, v2}, Lqe1;->observe(Lrc1;Lg62;)V

    invoke-static {}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getInstance()Lcom/rmedia/rplayer/helpers/PremiumManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getPremiumStatus()Lqe1;

    move-result-object v0

    new-instance v2, Lxh1;

    invoke-direct {v2, p0, v3}, Lxh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;I)V

    invoke-virtual {v0, p0, v2}, Lqe1;->observe(Lrc1;Lg62;)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->initializeDependencies()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->initializeUserInterface()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/rmedia/rplayer/activities/MainActivity;->handleIntent(Landroid/content/Intent;Z)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->checkAndPromptDeviceType()V

    invoke-static {p0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;

    move-result-object v0

    new-instance v1, Luh1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Luh1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->loadConfigurations(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSnifferDetectedDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Li6;

    const v1, 0x7f140134

    invoke-direct {v0, p0, v1}, Li6;-><init>(Landroid/content/Context;I)V

    const-string v1, "Security Alert"

    invoke-virtual {v0, v1}, Li6;->setTitle(Ljava/lang/CharSequence;)Li6;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A network modification tool ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has been detected. For security reasons, you must uninstall this application to use Reezn."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Li6;->b(Ljava/lang/String;)Li6;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Li6;->a(Z)Li6;

    move-result-object p1

    new-instance v1, Lvh1;

    invoke-direct {v1, p0, v0}, Lvh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;I)V

    const-string v0, "Exit"

    invoke-virtual {p1, v0, v1}, Li6;->d(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Li6;

    move-result-object p1

    invoke-virtual {p1}, Li6;->e()Lj6;

    return-void
.end method

.method private switchFragment(Landroidx/fragment/app/l;)V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->activeFragment:Landroidx/fragment/app/l;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->activeFragment:Landroidx/fragment/app/l;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/l;)Landroidx/fragment/app/a;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->o(Landroidx/fragment/app/l;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    iput-object p1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->activeFragment:Landroidx/fragment/app/l;

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/rmedia/rplayer/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$showSnifferDetectedDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$new$16(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v(Lcom/rmedia/rplayer/activities/MainActivity;Landroid/content/SharedPreferences;[Ljava/lang/String;Lj6;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$checkAndPromptDeviceType$9(Landroid/content/SharedPreferences;[Ljava/lang/String;Lj6;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/rmedia/rplayer/activities/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->lambda$initializeUserInterface$14(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lc23;

    invoke-direct {v0, p0}, Lc23;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ld23;

    invoke-direct {v0, p0}, Ld23;-><init>(Landroid/app/Activity;)V

    :goto_0
    invoke-virtual {v0}, Ld23;->a()V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lwh1;

    invoke-direct {p1, p0}, Lwh1;-><init>(Lcom/rmedia/rplayer/activities/MainActivity;)V

    invoke-virtual {v0, p1}, Ld23;->b(Lwh1;)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->isUserNotAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rmedia/rplayer/activities/MainActivity;->setupActivity()V

    invoke-static {p0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/activities/MainActivity;->isReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->handleSportsNotificationIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rmedia/rplayer/activities/MainActivity;->handleIntent(Landroid/content/Intent;Z)V

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/activities/MainActivity;->handleSportsNotificationIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/rmedia/rplayer/activities/MainActivity;->permissionManager:Lcom/rmedia/rplayer/helpers/PermissionManager;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Luh1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Luh1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
