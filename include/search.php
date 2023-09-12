<?php

include_once 'config.php';
include_once 'header.php';

if (isset($_GET['query'])) {
    $searchQuery = $_GET['query'];

    // Construct a SQL query to search for matching content
    $sql = "SELECT * FROM projects WHERE name LIKE :searchQuery OR language LIKE :searchQuery";

    // Prepare and execute the query
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['searchQuery' => "%$searchQuery%"]);

    // Fetch and display the search results
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
?>

<section id="breadcrumbHeader" class="container-xxl">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo APPURL; ?>/index.php">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Search</li>
        </ol>
    </nav>

</section>


<?php if (isset($results)) : ?>
    <div class="container">
        <table class="table">
            <thead>
                <tr>

                    <th scope="col">Title</th>
                    <th scope="col">Language Used</th>
                    <th scope="col">URL</th>

                </tr>
            </thead>
            <tbody>
                <?php foreach ($results as $result) : ?>
                    <tr>

                        <td><?php echo $result['title']; ?></td>
                        <td><?php echo $result['language']; ?></td>
                        <td><a href="<?php echo $result['livelink']; ?>"><?php echo $result['title']; ?></a></td>
                    </tr>
                <?php endforeach; ?>
            <?php else : ?>
                <p>No results found.</p>
            <?php endif; ?>

            </tbody>
        </table>


    </div>

    <?php

    include '../include/footer.php';

    ?>